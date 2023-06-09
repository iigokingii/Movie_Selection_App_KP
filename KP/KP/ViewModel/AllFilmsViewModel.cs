﻿using KP.db.context;
using KP.db.dbClasses;
using KP.dbClasses;
using KP.DBMethods.UnitOfWork;
using KP.ViewModel.BaseModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Input;

namespace KP.ViewModel
{
    internal class AllFilmsViewModel:ViewModelBase
    {
        ObservableCollection<BigItemInfo> _items;
        UnitOfWork unit;
        DbAppContext db;
        string _errorMsg;
        int? _id ;
        public ICommand DeleteMovieFromDBCommand { get; }
        public ICommand UpdateMovieInDBCommand { get; }
        public AllFilmsViewModel()
        {
            unit = new UnitOfWork();
            db = new DbAppContext();
            DeleteMovieFromDBCommand = new ViewModelCommandBase(DeleteMovieFromDB,CheckValid);
            UpdateMovieInDBCommand = new ViewModelCommandBase(UpdateMovieInDB,CheckValid);
            var t = unit.BigItemInfoRepository.GetAll();
            _items = new ObservableCollection<BigItemInfo>(t.Select(p => p));
        }

        private bool CheckValid(object obj)
        {
            bool _validData = false;
            if (_id!=0)
            {
                _validData = true;
            }
            return _validData;
        }

        private void DeleteMovieFromDB(object obj)
        {
            BigItemInfo temp = unit.BigItemInfoRepository.GetById((int)_id);
            if (temp != null)
            {

                Items.Remove(temp);
                unit.BigItemInfoRepository.Remove(temp);

                List<FramesFromMovie> frames = unit.FramesFromMovieRepository.GetAll()
                                                                            .ToList()
                                                                            .Where(ts => ts.BigItemInfoID == temp.ID)
                                                                            .Select(p => p)
                                                                            .ToList();
                for (int i = 0; i < frames.Count(); i++)
                {
                    unit.FramesFromMovieRepository.Remove(frames[i]);
                }

                MiniItemInfo mini = unit.MiniItemInfoRepository.GetAll().FirstOrDefault(p => p.BigItemInfoID == temp.ID);
                unit.MiniItemInfoRepository.Remove(mini);

                List<Review> reviews = unit.ReviewRepository.GetAll()
                                                    .ToList()
                                                    .Where(p => p.bigItemInfoID == temp.ID)
                                                    .Select(p => p)
                                                    .ToList();
                for (int i = 0; i < reviews.Count(); i++)
                {
                    unit.ReviewRepository.Remove(reviews[i]);
                }

                var watchlater = unit.WatchLaterRepository.GetAll()
                                                           .ToList()
                                                           .Where(p => p.bigItemInfoID == temp.ID)
                                                           .Select(p => p)
                                                           .ToList();
                for (int i = 0; i < watchlater.Count(); i++)
                {
                    unit.WatchLaterRepository.Remove(watchlater[i]);
                }
                var Likes = unit.LikesRepository.GetAll()
                                                 .ToList()
                                                 .Where(p => p.bigItemInfoID == temp.ID)
                                                 .Select(p => p)
                                                 .ToList();

                for (int i = 0; i < Likes.Count(); i++)
                {
                    unit.LikesRepository.Remove(Likes[i]);
                }
                unit.Save();
            }


        }
        //todo
        private void UpdateMovieInDB(object obj)
        {
            unit.Save();
            MiniItemInfo mini = unit.MiniItemInfoRepository.GetAll().FirstOrDefault(p=>p.BigItemInfoID==_id);
            if (mini != null)
            {
                BigItemInfo bi = Items.FirstOrDefault(p=>p.ID==_id);
                unit.MiniItemInfoRepository.Remove(mini);
                mini.BigItemInfo = bi;
                mini.SmallIMG = bi.BigImg;
                mini.Name = bi.Title;
                mini.Year = bi.Year;
                mini.Genre = bi.Genre;
                mini.ID = bi.ID;
                unit.MiniItemInfoRepository.Add(mini);
                unit.Save();
            }
            /*BigItemInfo temp = unit.BigItemInfoRepository.GetById((int)_id);
            BigItemInfo newItem = Items.FirstOrDefault(p=>p.ID==_id);
            if (temp != null)
            {

                Items.Remove(temp);
                unit.BigItemInfoRepository.Remove(temp);

                List<FramesFromMovie> frames = unit.FramesFromMovieRepository.GetAll()
                                                                            .ToList()
                                                                            .Where(ts => ts.BigItemInfoID == temp.ID)
                                                                            .Select(p => p)
                                                                            .ToList();
                for (int i = 0; i < frames.Count(); i++)
                {
                    unit.FramesFromMovieRepository.Remove(frames[i]);
                    FramesFromMovie frame = new FramesFromMovie();
                    frame.BigItemInfo = newItem;
                    frame.Frame = frames[i].Frame;
                    frame.ID = frames[i].ID;
                    unit.FramesFromMovieRepository.Add(frame);
                }

                MiniItemInfo mini = unit.MiniItemInfoRepository.GetAll().FirstOrDefault(p => p.BigItemInfoID == temp.ID);
                unit.MiniItemInfoRepository.Remove(mini);
                mini.BigItemInfo = newItem;
                unit.MiniItemInfoRepository.Add(mini);

                List<Review> reviews = unit.ReviewRepository.GetAll()
                                                    .ToList()
                                                    .Where(p => p.bigItemInfoID == temp.ID)
                                                    .Select(p => p)
                                                    .ToList();
                for (int i = 0; i < reviews.Count(); i++)
                {
                    
                    
                    unit.ReviewRepository.Remove(reviews[i]);
                    Review review = new Review();
                    review.UserReviewText = reviews[i].UserReviewText;
                    review.userProfile = reviews[i].userProfile;
                    review.Avatar = reviews[i].Avatar;
                    review.Date = reviews[i].Date;
                    review.Login = reviews[i].Login;
                    review.bigItemInfo = newItem;
                    review.ID = reviews[i].ID;
                    unit.ReviewRepository.Add(review);
                }

                var watchlater = unit.WatchLaterRepository.GetAll()
                                                           .ToList()
                                                           .Where(p => p.bigItemInfoID == temp.ID)
                                                           .Select(p => p)
                                                           .ToList();
                for (int i = 0; i < watchlater.Count(); i++)
                {
                    unit.WatchLaterRepository.Remove(watchlater[i]);
                    WatchLater later = new WatchLater();
                    later.miniItemInfo = mini;
                    later.bigItemInfo = newItem;
                    later.userID = watchlater[i].userID;
                    later.ID = watchlater[i].ID;
                    unit.WatchLaterRepository.Add(later);
                }
                var Likes = unit.LikesRepository .GetAll()
                                                 .ToList()
                                                 .Where(p => p.bigItemInfoID == temp.ID)
                                                 .Select(p => p)
                                                 .ToList();

                for (int i = 0; i < Likes.Count(); i++)
                {
                    unit.LikesRepository.Remove(Likes[i]);
                    Likes like = new Likes();
                    like.ID = Likes[i].ID;
                    like.bigItemInfo = newItem;
                    like.miniItemInfo = mini;
                    like.userID = Likes[i].userID;
                    unit.LikesRepository.Add(like);
                }
                unit.BigItemInfoRepository.Add(newItem);
                Items.Add(newItem);
                //Items.ToList().Sort();
                unit.Save();*/
            
            //}



            /*BigItemInfo temp = Items.FirstOrDefault(p => p.ID == ID);
            if (temp != null)
            {
                BigItemInfo item = unit.BigItemInfoRepository.GetById((int)ID);
                MiniItemInfo miniItem = unit.MiniItemInfoRepository.GetAll().FirstOrDefault(p => p.BigItemInfoID == item.ID);
                unit.MiniItemInfoRepository.Remove(miniItem);
                unit.BigItemInfoRepository.Remove(item);
                unit.Save();
                temp.MiniItemInfo = miniItem;
                miniItem.BigItemInfo = temp;
                unit.BigItemInfoRepository.Add(temp);
                unit.MiniItemInfoRepository.Add(miniItem);
                unit.Save();
            }*/

        }
        public string ErrorMsg
        {
            get
            {
                return _errorMsg;
            }
            set
            {
                _errorMsg = value;
                OnPropertyChanged("ErrorMsg");
            }
        }
        public int? ID
        {
            get
            {
                return _id;
            }
            set
            {
                _id = value;
                OnPropertyChanged("ID");
            }
        }
        public ObservableCollection<BigItemInfo> Items
        {
            get
            {
                return _items;
            }
            set
            {
                _items = value;
                OnPropertyChanged("Items");
            }
        }
    }
}
