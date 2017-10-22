.class public Lcom/acloud/stub/localmusic/QtActivity;
.super Lcom/acloud/activity/BaseActivity;
.source "QtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
.implements Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/activity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;",
        "Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;"
    }
.end annotation


# static fields
.field private static final LRC_READ_OVER:I

.field private static final TAG:Ljava/lang/String;

.field public static mDirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSingerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static musicMemmoryType:I


# instance fields
.field private curArtistImageName:Ljava/lang/String;

.field private isBind:Z

.field private isClickBrowserFile:Z

.field private isClickTimeBar:Z

.field private isClickVolumeBar:Z

.field private isFirst:Z

.field private isHaveNoFile:Z

.field private isNeedSeek:Z

.field private isNeedSetSelection:Z

.field private isPause:Z

.field private isStop:Z

.field private mAction:Ljava/lang/String;

.field private mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

.field private mArtistImageView:Lcom/acloud/stub/ui/view/CircleImageView;

.field private mArtistView:Landroid/widget/TextView;

.field private mCurMusicArtistName:Ljava/lang/String;

.field private mCurPlayerMusicIndex:I

.field private mCurectPlayListView:Landroid/widget/ListView;

.field private mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

.field private mCurrectTime:J

.field private mCurrectTimeText:Landroid/widget/TextView;

.field private mDetailsBtn:Landroid/widget/ImageView;

.field private mHttpDownloadServer:Lcom/acloud/network/http/HttpDownloadServer;

.field private mIsFavoriteImage:Landroid/widget/ImageView;

.field private mIsShowVolumeBar:Z

.field private mLastClickTime:J

.field private mLocationBtn:Landroid/widget/ImageView;

.field private mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

.field private mLrcDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
            ">;"
        }
    .end annotation
.end field

.field private mLrcHandler:Landroid/os/Handler;

.field private mLrcListView:Landroid/widget/ListView;

.field private mLrcRunnable:Lcom/acloud/DataRunnable;

.field private mMemmoryTimer:Lcom/acloud/AndroidTimer;

.field private mMusicApi:Lcom/acloud/stub/localmusic/network/api/MusicApi;

.field private mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

.field private mMusicNameView:Lcom/acloud/stub/ui/view/MarqueeView;

.field mMusicPlayerConn:Landroid/content/ServiceConnection;

.field private mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

.field private mMuteBox:Landroid/widget/CheckBox;

.field private mNextBtn:Landroid/widget/ImageView;

.field private mPath:Ljava/lang/String;

.field private mPaths:[Ljava/lang/String;

.field private mPlayOrPauseBtn:Landroid/widget/ImageView;

.field private mPlayReceive:Landroid/content/BroadcastReceiver;

.field private mPlayServiceCallball:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

.field private mPool:Ljava/util/concurrent/ExecutorService;

.field private mPreBtn:Landroid/widget/ImageView;

.field private mProgress:I

.field private mSongPlaymodeBtn:Landroid/widget/ImageView;

.field private mTimeBar:Landroid/widget/SeekBar;

.field private mTitleView:Landroid/widget/TextView;

.field private mTotalTime:J

.field private mTotalTimeText:Landroid/widget/TextView;

.field private mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private mVolumeText:Landroid/widget/TextView;

.field private mWindowWidth:I

.field private memmoryPlayState:I

.field private onPause:Z

.field private songPlaymode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acloud/stub/localmusic/QtActivity;->TAG:Ljava/lang/String;

    .line 111
    const/4 v0, -0x1

    sput v0, Lcom/acloud/stub/localmusic/QtActivity;->musicMemmoryType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/acloud/activity/BaseActivity;-><init>()V

    .line 97
    iput v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mWindowWidth:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    .line 112
    iput v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    .line 114
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTitleView:Landroid/widget/TextView;

    .line 115
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicNameView:Lcom/acloud/stub/ui/view/MarqueeView;

    .line 116
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistView:Landroid/widget/TextView;

    .line 117
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsFavoriteImage:Landroid/widget/ImageView;

    .line 118
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistImageView:Lcom/acloud/stub/ui/view/CircleImageView;

    .line 120
    iput-boolean v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsShowVolumeBar:Z

    .line 122
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mDetailsBtn:Landroid/widget/ImageView;

    .line 123
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mSongPlaymodeBtn:Landroid/widget/ImageView;

    .line 124
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPreBtn:Landroid/widget/ImageView;

    .line 125
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayOrPauseBtn:Landroid/widget/ImageView;

    .line 126
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mNextBtn:Landroid/widget/ImageView;

    .line 130
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    .line 131
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeText:Landroid/widget/TextView;

    .line 132
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    .line 133
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 135
    iput-wide v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLastClickTime:J

    .line 137
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;

    .line 138
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTimeText:Landroid/widget/TextView;

    .line 139
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTimeText:Landroid/widget/TextView;

    .line 141
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickTimeBar:Z

    .line 143
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickVolumeBar:Z

    .line 144
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->onPause:Z

    .line 145
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isStop:Z

    .line 146
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isPause:Z

    .line 148
    iput-boolean v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->isHaveNoFile:Z

    .line 151
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickBrowserFile:Z

    .line 152
    iput-boolean v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->isFirst:Z

    .line 153
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isNeedSetSelection:Z

    .line 154
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isNeedSeek:Z

    .line 156
    iput v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->memmoryPlayState:I

    .line 158
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    .line 160
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcListView:Landroid/widget/ListView;

    .line 161
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    .line 162
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    .line 163
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    .line 165
    iput-wide v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J

    .line 166
    iput-wide v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J

    .line 167
    iput v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    .line 169
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 170
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcRunnable:Lcom/acloud/DataRunnable;

    .line 174
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    .line 176
    const-string v0, "App_newmusic"

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mAction:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    .line 178
    new-instance v0, Lcom/acloud/stub/localmusic/QtActivity$1;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/QtActivity$1;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayServiceCallball:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    .line 208
    new-instance v0, Lcom/acloud/stub/localmusic/network/api/MusicApi;

    invoke-direct {v0}, Lcom/acloud/stub/localmusic/network/api/MusicApi;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicApi:Lcom/acloud/stub/localmusic/network/api/MusicApi;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurMusicArtistName:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mHttpDownloadServer:Lcom/acloud/network/http/HttpDownloadServer;

    .line 213
    new-instance v0, Lcom/acloud/stub/localmusic/QtActivity$2;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/QtActivity$2;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcHandler:Landroid/os/Handler;

    .line 1198
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->curArtistImageName:Ljava/lang/String;

    .line 1235
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isBind:Z

    .line 1657
    new-instance v0, Lcom/acloud/stub/localmusic/QtActivity$3;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/QtActivity$3;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerConn:Landroid/content/ServiceConnection;

    .line 1685
    new-instance v0, Lcom/acloud/stub/localmusic/QtActivity$4;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/QtActivity$4;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    .line 1809
    new-instance v0, Lcom/acloud/stub/localmusic/QtActivity$5;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/QtActivity$5;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayReceive:Landroid/content/BroadcastReceiver;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 1777
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isNeedSetSelection:Z

    return-void
.end method

.method static synthetic access$10(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayServiceCallball:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    return-object v0
.end method

.method static synthetic access$11(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$MusicCallback;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    return-object v0
.end method

.method static synthetic access$13(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    return-object v0
.end method

.method static synthetic access$14(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->initMusicInfoData()V

    return-void
.end method

.method static synthetic access$15(Lcom/acloud/stub/localmusic/QtActivity;JJ)V
    .locals 1

    .prologue
    .line 1748
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/acloud/stub/localmusic/QtActivity;->setTimeText(JJ)V

    return-void
.end method

.method static synthetic access$16(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickTimeBar:Z

    return-void
.end method

.method static synthetic access$17(Lcom/acloud/stub/localmusic/QtActivity;J)V
    .locals 1

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J

    return-void
.end method

.method static synthetic access$18(Lcom/acloud/stub/localmusic/QtActivity;J)V
    .locals 1

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J

    return-void
.end method

.method static synthetic access$19(Lcom/acloud/stub/localmusic/QtActivity;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->onPreMusic()V

    return-void
.end method

.method static synthetic access$20(Lcom/acloud/stub/localmusic/QtActivity;)I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    return v0
.end method

.method static synthetic access$21(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$22(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/acloud/stub/localmusic/QtActivity;ILandroid/widget/ListView;Z)V
    .locals 0

    .prologue
    .line 1625
    invoke-direct {p0, p1, p2, p3}, Lcom/acloud/stub/localmusic/QtActivity;->gotoListviewLine(ILandroid/widget/ListView;Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->completionNextMusic()V

    return-void
.end method

.method static synthetic access$25(Lcom/acloud/stub/localmusic/QtActivity;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->onPause:Z

    return v0
.end method

.method static synthetic access$26(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->getCurPlayerMusicIndex(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    return-void
.end method

.method static synthetic access$28(Lcom/acloud/stub/localmusic/QtActivity;)J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J

    return-wide v0
.end method

.method static synthetic access$29(Lcom/acloud/stub/localmusic/QtActivity;)J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->onNextMusic()V

    return-void
.end method

.method static synthetic access$30(Lcom/acloud/stub/localmusic/QtActivity;IILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/acloud/stub/localmusic/QtActivity;->showMessageDialog(IILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    return-void
.end method

.method static synthetic access$31(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->setViewEnable(Z)V

    return-void
.end method

.method static synthetic access$32(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isHaveNoFile:Z

    return-void
.end method

.method static synthetic access$33(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->hideMessageDialog()V

    return-void
.end method

.method static synthetic access$34(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->initConfigData()V

    return-void
.end method

.method static synthetic access$35(Lcom/acloud/stub/localmusic/QtActivity;)Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickBrowserFile:Z

    return v0
.end method

.method static synthetic access$36(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickBrowserFile:Z

    return-void
.end method

.method static synthetic access$37(Lcom/acloud/stub/localmusic/QtActivity;I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    return-void
.end method

.method static synthetic access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .locals 1

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->whichDataInTotalList(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .locals 1

    .prologue
    .line 1996
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->getClickData(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1977
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->fileInCurList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$42(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$43(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$44(Lcom/acloud/stub/localmusic/QtActivity;I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    return-void
.end method

.method static synthetic access$45(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    return-object v0
.end method

.method static synthetic access$46(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 1580
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V

    return-void
.end method

.method static synthetic access$48(Lcom/acloud/stub/localmusic/QtActivity;I)V
    .locals 0

    .prologue
    .line 1325
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->setCurectPlayListSelection(I)V

    return-void
.end method

.method static synthetic access$49(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->setCurrectPlayList(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    return-object v0
.end method

.method static synthetic access$50(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isNeedSeek:Z

    return-void
.end method

.method static synthetic access$51(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->refreshView()V

    return-void
.end method

.method static synthetic access$52(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/network/http/HttpDownloadServer;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mHttpDownloadServer:Lcom/acloud/network/http/HttpDownloadServer;

    return-object v0
.end method

.method static synthetic access$53(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)Z
    .locals 1

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->loadLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$54(Lcom/acloud/stub/localmusic/QtActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$55(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$56(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurMusicArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$57(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1203
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->loadArtistImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$58(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isStop:Z

    return-void
.end method

.method static synthetic access$59(Lcom/acloud/stub/localmusic/QtActivity;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isPause:Z

    return v0
.end method

.method static synthetic access$6(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$60(Lcom/acloud/stub/localmusic/QtActivity;)Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isStop:Z

    return v0
.end method

.method static synthetic access$61(Lcom/acloud/stub/localmusic/QtActivity;)I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->memmoryPlayState:I

    return v0
.end method

.method static synthetic access$62(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isPause:Z

    return-void
.end method

.method static synthetic access$63(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$64(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/ui/view/VerticalSeekBar;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    return-object v0
.end method

.method static synthetic access$65(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$66(Lcom/acloud/stub/localmusic/QtActivity;I)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->memmoryPlayState:I

    return-void
.end method

.method static synthetic access$67(Lcom/acloud/stub/localmusic/QtActivity;)J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLastClickTime:J

    return-wide v0
.end method

.method static synthetic access$68(Lcom/acloud/stub/localmusic/QtActivity;J)V
    .locals 1

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLastClickTime:J

    return-void
.end method

.method static synthetic access$69(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->cancelToast()V

    return-void
.end method

.method static synthetic access$7(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->resetLrc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$70(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayOrPauseBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$71(Lcom/acloud/stub/localmusic/QtActivity;IZ)V
    .locals 0

    .prologue
    .line 1890
    invoke-direct {p0, p1, p2}, Lcom/acloud/stub/localmusic/QtActivity;->onClickMusic(IZ)V

    return-void
.end method

.method static synthetic access$72(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1937
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->disposeExternal([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$73(Lcom/acloud/stub/localmusic/QtActivity;)Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isNeedSeek:Z

    return v0
.end method

.method static synthetic access$74(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->seekTo()V

    return-void
.end method

.method static synthetic access$8(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    return-void
.end method

.method static synthetic access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    return-object v0
.end method

.method private bindMediaService()V
    .locals 3

    .prologue
    .line 1237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/acloud/stub/service/aidl/IPlayService;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isBind:Z

    .line 1239
    iget-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isBind:Z

    if-nez v1, :cond_0

    .line 1240
    sget-object v1, Lcom/acloud/stub/localmusic/QtActivity;->TAG:Ljava/lang/String;

    const-string v2, "music player service unbind"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    return-void
.end method

.method private changePlayMode()V
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_0
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->setPlaymodeBtnBackground()V

    .line 405
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setSongPlayMode(Landroid/content/Context;I)V

    .line 406
    return-void

    .line 395
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    goto :goto_0

    .line 398
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    goto :goto_0

    .line 401
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changePlayState(Z)V
    .locals 8
    .param p1, "playState"    # Z

    .prologue
    .line 1779
    if-eqz p1, :cond_1

    .line 1780
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayOrPauseBtn:Landroid/widget/ImageView;

    const v4, 0x7f020072

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1781
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    if-eqz v1, :cond_0

    .line 1782
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->pause()V

    .line 1783
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isPause:Z

    .line 1784
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isStop:Z

    .line 1785
    iget-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isFirst:Z

    if-eqz v1, :cond_0

    .line 1786
    new-instance v1, Landroid/content/Intent;

    const-string v4, "xy.voice.pause"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1807
    :cond_0
    :goto_0
    return-void

    .line 1791
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayOrPauseBtn:Landroid/widget/ImageView;

    const v4, 0x7f020071

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1792
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    if-eqz v1, :cond_0

    .line 1793
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v4, v1

    iget-wide v6, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J

    sub-long v2, v4, v6

    .line 1794
    .local v2, "timeDifference":J
    const-wide/16 v4, 0x64

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 1796
    :cond_2
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->seekTo(I)V

    .line 1798
    :cond_3
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->start()V

    .line 1799
    iget-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isFirst:Z

    if-eqz v1, :cond_0

    .line 1800
    new-instance v1, Landroid/content/Intent;

    const-string v4, "xy.voice.play"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1804
    .end local v2    # "timeDifference":J
    :catch_0
    move-exception v0

    .line 1805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private completionNextMusic()V
    .locals 2

    .prologue
    .line 527
    const-string v0, "0-0"

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 528
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    packed-switch v0, :pswitch_data_0

    .line 540
    :goto_0
    return-void

    .line 530
    :pswitch_0
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->onNextMusic()V

    goto :goto_0

    .line 533
    :pswitch_1
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->getRandomIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->onClickMusic(IZ)V

    goto :goto_0

    .line 536
    :pswitch_2
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 537
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->setCurectPlayListSelection(I)V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private disposeExternal([Ljava/lang/String;)V
    .locals 7
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1938
    iput-boolean v6, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickBrowserFile:Z

    .line 1939
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->isQuerySqlOver()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1940
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1941
    .local v2, "receiveDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 1948
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->fileInCurList([Ljava/lang/String;)V

    .line 1949
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1950
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayInfoList(Ljava/util/List;)V

    .line 1951
    iput v5, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    .line 1952
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v3, v5}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setPlayPosition(I)V

    .line 1953
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4, v5}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setSelectPosition(Landroid/widget/ListView;I)V

    .line 1954
    invoke-direct {p0, v6}, Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V

    .line 1955
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 1957
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    new-instance v4, Lcom/acloud/stub/localmusic/QtActivity$12;

    invoke-direct {v4, p0}, Lcom/acloud/stub/localmusic/QtActivity$12;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1965
    iput-boolean v5, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickBrowserFile:Z

    .line 1967
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1968
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    .line 1971
    .end local v1    # "i":I
    .end local v2    # "receiveDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_0
    return-void

    .line 1942
    .restart local v1    # "i":I
    .restart local v2    # "receiveDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_1
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/QtActivity;->whichDataInTotalList(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 1943
    .local v0, "clickData":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    if-nez v0, :cond_2

    aget-object v3, p1, v1

    if-eqz v3, :cond_2

    aget-object v3, p1, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1944
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/QtActivity;->getClickData(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 1946
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private fileInCurList([Ljava/lang/String;)V
    .locals 5
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 1978
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 1979
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 1988
    return-void

    .line 1980
    :cond_0
    aget-object v3, p1, v1

    .line 1981
    .local v3, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 1979
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1982
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1983
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1981
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getClickData(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const v7, 0x7f060039

    const/16 v10, 0x23

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1997
    new-instance v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-direct {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;-><init>()V

    .line 1998
    .local v2, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    if-eqz p1, :cond_2

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1999
    invoke-virtual {v2, p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setPath(Ljava/lang/String;)V

    .line 2000
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setName(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2002
    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setArtist(Ljava/lang/String;)V

    .line 2006
    :goto_0
    invoke-virtual {p0, v7}, Lcom/acloud/stub/localmusic/QtActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setAlbum(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2008
    .local v4, "type":Ljava/lang/String;
    const-string v5, "ape"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "flac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2009
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setType(I)V

    .line 2013
    :goto_1
    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/acloud/hanzi/two/HanziToPinyinUtil;->getPinYinTwo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setPinyin(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPinyin()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2015
    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPinyin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aget-char v3, v5, v8

    .line 2016
    .local v3, "initial":C
    const/16 v5, 0x61

    if-lt v3, v5, :cond_5

    const/16 v5, 0x7a

    if-gt v3, v5, :cond_5

    .line 2017
    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setInitial(C)V

    .line 2024
    .end local v3    # "initial":C
    :goto_2
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setDirPath(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v2, v8}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    .line 2026
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCollectList()Ljava/util/List;

    move-result-object v1

    .line 2027
    .local v1, "collectDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 2034
    .end local v1    # "collectDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .end local v4    # "type":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v2

    .line 2004
    :cond_3
    invoke-virtual {p0, v7}, Lcom/acloud/stub/localmusic/QtActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setArtist(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2011
    .restart local v4    # "type":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v9}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setType(I)V

    goto :goto_1

    .line 2019
    .restart local v3    # "initial":C
    :cond_5
    invoke-virtual {v2, v10}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setInitial(C)V

    goto :goto_2

    .line 2022
    .end local v3    # "initial":C
    :cond_6
    invoke-virtual {v2, v10}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setInitial(C)V

    goto :goto_2

    .line 2027
    .restart local v1    # "collectDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 2028
    .local v0, "collectData":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2029
    invoke-virtual {v2, v9}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_3
.end method

.method private getCurPlayerMusicIndex(Ljava/lang/String;)V
    .locals 5
    .param p1, "memmoryPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 789
    if-eqz p1, :cond_7

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 790
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    iput v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 795
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 796
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 803
    .end local v1    # "i":I
    :cond_2
    :goto_2
    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_3

    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 804
    :cond_3
    iput v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    .line 805
    iput v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    goto :goto_0

    .line 797
    .restart local v1    # "i":I
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 798
    iput v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    goto :goto_2

    .line 796
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 809
    .end local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .end local v1    # "i":I
    :cond_6
    iput v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    .line 810
    iput v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    goto :goto_0

    .line 813
    :cond_7
    iput v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    .line 814
    iput v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    goto :goto_0
.end method

.method private getRandomIndex()I
    .locals 6

    .prologue
    .line 1739
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 1740
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1741
    .local v1, "position":I
    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    if-ne v1, v2, :cond_0

    .line 1742
    add-int/lit8 v1, v1, 0x1

    .line 1743
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1745
    :cond_0
    return v1
.end method

.method private getSongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1047
    const-string v1, ""

    .line 1048
    .local v1, "songName":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "names":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 1050
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 1054
    :cond_0
    :goto_0
    return-object v1

    .line 1051
    :cond_1
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1052
    const/4 v2, 0x0

    aget-object v1, v0, v2

    goto :goto_0
.end method

.method private gotoApsSettings()V
    .locals 2

    .prologue
    .line 600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 601
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.xyaps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 603
    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->startActivity(Landroid/content/Intent;)V

    .line 604
    return-void
.end method

.method private gotoListviewLine(ILandroid/widget/ListView;Z)V
    .locals 3
    .param p1, "nLine"    # I
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "isNeedAnim"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1626
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    if-gez p1, :cond_3

    .line 1630
    const/4 p1, 0x0

    .line 1635
    :cond_2
    :goto_1
    if-eqz p3, :cond_4

    .line 1636
    const/16 v0, 0x12c

    invoke-virtual {p2, p1, v2, v0}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    .line 1631
    :cond_3
    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 1632
    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 1638
    :cond_4
    invoke-virtual {p2}, Landroid/widget/ListView;->requestFocus()Z

    .line 1639
    if-nez p1, :cond_5

    .line 1640
    invoke-virtual {p2, v2, v2}, Landroid/widget/ListView;->scrollTo(II)V

    goto :goto_0

    .line 1642
    :cond_5
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private initActivityCallBack()V
    .locals 1

    .prologue
    .line 1331
    new-instance v0, Lcom/acloud/stub/localmusic/QtActivity$11;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/QtActivity$11;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    .line 1575
    return-void
.end method

.method private initConfigData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 353
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "memmoryData":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 355
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J

    .line 356
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J

    .line 358
    iget-wide v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 359
    iget-wide v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J

    long-to-int v1, v2

    iput v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iput v6, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    goto :goto_0
.end method

.method private initMusicInfoData()V
    .locals 3

    .prologue
    .line 610
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    new-instance v1, Lcom/acloud/stub/localmusic/QtActivity$7;

    invoke-direct {v1, p0}, Lcom/acloud/stub/localmusic/QtActivity$7;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    .line 747
    const-string v2, "activity"

    .line 610
    invoke-virtual {v0, p0, v1, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->init(Landroid/content/Context;Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method private initReceive()V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 368
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "action_music_main_play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/acloud/stub/localmusic/QtActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 370
    return-void
.end method

.method private initTimer()V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Lcom/acloud/AndroidTimer;

    new-instance v1, Lcom/acloud/stub/localmusic/QtActivity$6;

    invoke-direct {v1, p0}, Lcom/acloud/stub/localmusic/QtActivity$6;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    invoke-direct {v0, v1}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    .line 346
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/acloud/AndroidTimer;->start(I)V

    .line 347
    return-void
.end method

.method private isQuerySqlOver()Z
    .locals 2

    .prologue
    .line 2042
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 2043
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSameList(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 852
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 853
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ne v4, v7, :cond_4

    .line 854
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    move v4, v6

    .line 869
    .end local v1    # "i":I
    :goto_1
    return v4

    .line 855
    .restart local v1    # "i":I
    :cond_0
    const-string v2, ""

    .line 856
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 857
    .local v3, "names":[Ljava/lang/String;
    array-length v4, v3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 858
    aget-object v2, v3, v6

    .line 862
    :cond_1
    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 863
    goto :goto_1

    .line 859
    :cond_2
    array-length v4, v3

    if-ne v4, v6, :cond_1

    .line 860
    aget-object v2, v3, v5

    goto :goto_2

    .line 854
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "names":[Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 867
    goto :goto_1
.end method

.method private loadArtistImage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "artist"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1204
    iget-object v5, p0, Lcom/acloud/stub/localmusic/QtActivity;->curArtistImageName:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1232
    :goto_0
    return v3

    .line 1207
    :cond_0
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->curArtistImageName:Ljava/lang/String;

    .line 1209
    const v5, 0x7f060039

    invoke-virtual {p0, v5}, Lcom/acloud/stub/localmusic/QtActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/acloud/stub/utils/PathUtils;->getArtistPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, "artistImagePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1215
    iget-object v5, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistImageView:Lcom/acloud/stub/ui/view/CircleImageView;

    invoke-virtual {v5, v4}, Lcom/acloud/stub/ui/view/CircleImageView;->setVisibility(I)V

    .line 1216
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1217
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 1218
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1219
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistImageView:Lcom/acloud/stub/ui/view/CircleImageView;

    invoke-virtual {v3, v7}, Lcom/acloud/stub/ui/view/CircleImageView;->setVisibility(I)V

    move v3, v4

    .line 1220
    goto :goto_0

    .line 1222
    :cond_1
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistImageView:Lcom/acloud/stub/ui/view/CircleImageView;

    invoke-virtual {v4, v1}, Lcom/acloud/stub/ui/view/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1229
    .end local v0    # "artistImagePath":Ljava/lang/String;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageFile":Ljava/io/File;
    :cond_2
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistImageView:Lcom/acloud/stub/ui/view/CircleImageView;

    invoke-virtual {v3, v7}, Lcom/acloud/stub/ui/view/CircleImageView;->setVisibility(I)V

    .line 1231
    const-string v3, ""

    iput-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->curArtistImageName:Ljava/lang/String;

    move v3, v4

    .line 1232
    goto :goto_0
.end method

.method private loadLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)Z
    .locals 12
    .param p1, "data"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .prologue
    const/4 v7, 0x0

    .line 1063
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f060039

    invoke-virtual {p0, v9}, Lcom/acloud/stub/localmusic/QtActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1064
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1066
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".lrc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1067
    .local v5, "musicLrcPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/acloud/stub/utils/PathUtils;->getLrcPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".lrc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "lrcPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v3, "musicLrcFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v1, "lrcFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1071
    .local v4, "musicLrcFileExists":Z
    const/4 v0, 0x0

    .line 1072
    .local v0, "LrcFileExists":Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1073
    const/4 v4, 0x1

    .line 1075
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1076
    const/4 v0, 0x1

    .line 1078
    :cond_1
    if-nez v4, :cond_2

    if-eqz v0, :cond_5

    .line 1080
    :cond_2
    if-eqz v4, :cond_3

    .line 1081
    move-object v6, v3

    .line 1085
    .local v6, "trueLrcFile":Ljava/io/File;
    :goto_0
    iget-object v7, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcRunnable:Lcom/acloud/DataRunnable;

    if-nez v7, :cond_4

    .line 1086
    new-instance v7, Lcom/acloud/DataRunnable;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/acloud/stub/localmusic/QtActivity$9;

    invoke-direct {v9, p0}, Lcom/acloud/stub/localmusic/QtActivity$9;-><init>(Lcom/acloud/stub/localmusic/QtActivity;)V

    invoke-direct {v7, v8, v9}, Lcom/acloud/DataRunnable;-><init>(Ljava/lang/Object;Lcom/acloud/DataRunnable$DataRunnableCallback;)V

    iput-object v7, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcRunnable:Lcom/acloud/DataRunnable;

    .line 1100
    :goto_1
    iget-object v7, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPool:Ljava/util/concurrent/ExecutorService;

    iget-object v8, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcRunnable:Lcom/acloud/DataRunnable;

    invoke-virtual {v8}, Lcom/acloud/DataRunnable;->getRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1101
    const/4 v7, 0x1

    .line 1108
    .end local v0    # "LrcFileExists":Z
    .end local v1    # "lrcFile":Ljava/io/File;
    .end local v2    # "lrcPath":Ljava/lang/String;
    .end local v3    # "musicLrcFile":Ljava/io/File;
    .end local v4    # "musicLrcFileExists":Z
    .end local v5    # "musicLrcPath":Ljava/lang/String;
    .end local v6    # "trueLrcFile":Ljava/io/File;
    :goto_2
    return v7

    .line 1083
    .restart local v0    # "LrcFileExists":Z
    .restart local v1    # "lrcFile":Ljava/io/File;
    .restart local v2    # "lrcPath":Ljava/lang/String;
    .restart local v3    # "musicLrcFile":Ljava/io/File;
    .restart local v4    # "musicLrcFileExists":Z
    .restart local v5    # "musicLrcPath":Ljava/lang/String;
    :cond_3
    move-object v6, v1

    .restart local v6    # "trueLrcFile":Ljava/io/File;
    goto :goto_0

    .line 1098
    :cond_4
    iget-object v7, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcRunnable:Lcom/acloud/DataRunnable;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/acloud/DataRunnable;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1103
    .end local v6    # "trueLrcFile":Ljava/io/File;
    :cond_5
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/acloud/stub/localmusic/QtActivity;->setEmptyLrcToList(Ljava/lang/String;)V

    goto :goto_2

    .line 1107
    .end local v0    # "LrcFileExists":Z
    .end local v1    # "lrcFile":Ljava/io/File;
    .end local v2    # "lrcPath":Ljava/lang/String;
    .end local v3    # "musicLrcFile":Ljava/io/File;
    .end local v4    # "musicLrcFileExists":Z
    .end local v5    # "musicLrcPath":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/acloud/stub/localmusic/QtActivity;->setEmptyLrcToList(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onClickMusic(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isNeedSetSelection"    # Z

    .prologue
    .line 1891
    const-string v1, "0-0"

    invoke-static {p0, v1}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 1892
    iget v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    if-ne v1, p1, :cond_1

    .line 1893
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->playOrPause()V

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1895
    :cond_1
    iput p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    .line 1896
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 1897
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1898
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 1899
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v1, p1}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setPlayPosition(I)V

    .line 1901
    :cond_2
    if-eqz p2, :cond_0

    .line 1902
    iget v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->setCurectPlayListSelection(I)V

    goto :goto_0
.end method

.method private onExternalCallMusic(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1911
    if-eqz p1, :cond_0

    .line 1913
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1914
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1915
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1916
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1917
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    .line 1918
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->disposeExternal([Ljava/lang/String;)V

    .line 1931
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1920
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "com.acloud.stub.music.data"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1922
    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1923
    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    .line 1924
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    .line 1925
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 1926
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->disposeExternal([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onNextMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 547
    const-string v2, "0-0"

    invoke-static {p0, v2}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 549
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 566
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 553
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    goto :goto_0

    .line 555
    :cond_1
    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    if-ne v2, v3, :cond_2

    .line 556
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->getRandomIndex()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/acloud/stub/localmusic/QtActivity;->onClickMusic(IZ)V

    goto :goto_0

    .line 558
    :cond_2
    iget v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    .line 559
    .local v1, "index":I
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    .line 560
    const/4 v1, 0x0

    .line 562
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/acloud/stub/localmusic/QtActivity;->onClickMusic(IZ)V

    goto :goto_0
.end method

.method private onPreMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 572
    const-string v2, "0-0"

    invoke-static {p0, v2}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 574
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 590
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 578
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    goto :goto_0

    .line 580
    :cond_1
    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    if-ne v2, v3, :cond_2

    .line 581
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->getRandomIndex()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/acloud/stub/localmusic/QtActivity;->onClickMusic(IZ)V

    goto :goto_0

    .line 583
    :cond_2
    iget v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    .line 584
    .local v1, "index":I
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    .line 585
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 587
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/acloud/stub/localmusic/QtActivity;->onClickMusic(IZ)V

    goto :goto_0
.end method

.method private play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 6
    .param p1, "data"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 937
    if-nez p1, :cond_0

    .line 960
    :goto_0
    return-void

    .line 941
    :cond_0
    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->setCurrectPlayList(Z)V

    .line 945
    :try_start_0
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    .line 946
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->play(Ljava/lang/String;II)V

    .line 947
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_1
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->updateLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 957
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->updateArtistImage(Ljava/lang/String;)V

    .line 958
    invoke-direct {p0, v5}, Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V

    .line 959
    invoke-direct {p0, v5}, Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private refreshView()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 751
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->getCurPlayerMusicIndex(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->setCurrectPlayList(Z)V

    .line 753
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 754
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->updateLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 755
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->updateArtistImage(Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicNameView:Lcom/acloud/stub/ui/view/MarqueeView;

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/acloud/stub/ui/view/MarqueeView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->updateCollectState()V

    .line 759
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V

    .line 760
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    .line 761
    iget v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    int-to-long v6, v6

    move-object v8, p0

    .line 760
    invoke-virtual/range {v1 .. v8}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V

    .line 762
    return-void
.end method

.method private resetLrc(Ljava/lang/String;)V
    .locals 4
    .param p1, "songName"    # Ljava/lang/String;

    .prologue
    .line 1028
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1029
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    invoke-direct {v0}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;-><init>()V

    .line 1030
    .local v0, "lrcData1":Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->setTime(Ljava/lang/Long;)V

    .line 1031
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->setLrc(Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v1, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    invoke-direct {v1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;-><init>()V

    .line 1034
    .local v1, "lrcData2":Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->setTime(Ljava/lang/Long;)V

    .line 1035
    invoke-virtual {v1, p1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->setLrc(Ljava/lang/String;)V

    .line 1036
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setData(Ljava/util/List;)V

    .line 1039
    return-void
.end method

.method private seekTo()V
    .locals 6

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setCurPlayTime(J)V

    .line 881
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->getCurSelectedItem()I

    move-result v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/acloud/stub/localmusic/QtActivity;->gotoListviewLine(ILandroid/widget/ListView;Z)V

    .line 882
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mProgress ______________"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    invoke-virtual {v1, v2}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->seekTo(I)V

    .line 884
    iget v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/acloud/stub/localmusic/QtActivity;->setTimeText(JJ)V

    .line 885
    const/4 v1, 0x0

    iput v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCurectPlayListSelection(I)V
    .locals 3
    .param p1, "selection"    # I

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, p1}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setSelectPosition(Landroid/widget/ListView;I)V

    .line 1327
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    add-int/lit8 v0, p1, -0x2

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    add-int/lit8 v0, p1, -0x2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1328
    return-void

    .line 1327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCurrectPlayList(Z)V
    .locals 4
    .param p1, "isSelect"    # Z

    .prologue
    .line 822
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v1, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 823
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    if-nez v0, :cond_0

    .line 831
    :goto_0
    return-void

    .line 827
    :cond_0
    if-eqz p1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setSelectPosition(Landroid/widget/ListView;I)V

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v1, v2}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setPlayPosition(I)V

    goto :goto_0
.end method

.method private setEmptyLrcToList(Ljava/lang/String;)V
    .locals 4
    .param p1, "songName"    # Ljava/lang/String;

    .prologue
    .line 1116
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1117
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    invoke-direct {v0}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;-><init>()V

    .line 1118
    .local v0, "emptyData":Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->setTime(Ljava/lang/Long;)V

    .line 1119
    invoke-virtual {v0, p1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->setLrc(Ljava/lang/String;)V

    .line 1120
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1122
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1123
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1124
    return-void
.end method

.method private setMusicCollect()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 505
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    iget v5, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v2, v5}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 506
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v1

    .line 513
    .local v1, "isFavoite":Z
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v6, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setMusicIsCollect(Ljava/lang/String;Z)V

    .line 514
    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    .line 516
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v2

    const-string v3, "table_music_collect_playlist"

    .line 517
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCollectList()Ljava/util/List;

    move-result-object v4

    .line 516
    invoke-virtual {v2, v3, v4}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    .line 519
    if-eqz v1, :cond_3

    .line 520
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsFavoriteImage:Landroid/widget/ImageView;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 513
    goto :goto_1

    :cond_2
    move v3, v4

    .line 514
    goto :goto_2

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsFavoriteImage:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setPlaymodeBtnBackground()V
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 378
    :pswitch_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mSongPlaymodeBtn:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mSongPlaymodeBtn:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 384
    :pswitch_2
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mSongPlaymodeBtn:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTimeText(JJ)V
    .locals 13
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .prologue
    .line 1749
    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    .line 1750
    .local v6, "totalTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x3c

    div-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1751
    .local v4, "totalMinute":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    int-to-long v10, v9

    sub-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1752
    .local v5, "totalSecond":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1753
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1755
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1756
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1759
    :cond_1
    const-wide/16 v8, 0x3e8

    div-long v2, p1, v8

    .line 1760
    .local v2, "currectTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x3c

    div-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1761
    .local v0, "currectMinute":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    int-to-long v10, v9

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1762
    .local v1, "currectSecond":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1763
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1765
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1766
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1769
    :cond_3
    iget-object v8, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTimeText:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    iget-object v8, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTimeText:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1771
    return-void
.end method

.method private setViewEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 765
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 766
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 767
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mDetailsBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 768
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mSongPlaymodeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 769
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPreBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 770
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayOrPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 771
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 773
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isFirst:Z

    if-nez v0, :cond_0

    .line 774
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->curArtistImageName:Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicNameView:Lcom/acloud/stub/ui/view/MarqueeView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/acloud/stub/ui/view/MarqueeView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistImageView:Lcom/acloud/stub/ui/view/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/acloud/stub/ui/view/CircleImageView;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setData(Ljava/util/List;)V

    .line 780
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayInfoList(Ljava/util/List;)V

    .line 781
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setData(Ljava/util/List;)V

    .line 783
    :cond_0
    return-void
.end method

.method private unbindMediaService()V
    .locals 2

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isBind:Z

    if-eqz v0, :cond_0

    .line 1650
    :try_start_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->setCallback(Lcom/acloud/stub/service/aidl/IPlayServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    :goto_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1655
    :cond_0
    return-void

    .line 1651
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateArtistImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "artistName"    # Ljava/lang/String;

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurMusicArtistName:Ljava/lang/String;

    .line 1133
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->loadArtistImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicApi:Lcom/acloud/stub/localmusic/network/api/MusicApi;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurMusicArtistName:Ljava/lang/String;

    new-instance v2, Lcom/acloud/stub/localmusic/QtActivity$10;

    new-instance v3, Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;

    invoke-direct {v3}, Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/acloud/stub/localmusic/QtActivity$10;-><init>(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;)V

    invoke-virtual {v0, v1, v2}, Lcom/acloud/stub/localmusic/network/api/MusicApi;->searchArtist(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V

    .line 1196
    :cond_0
    return-void
.end method

.method private updateCollectState()V
    .locals 3

    .prologue
    .line 1609
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    iget v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v1, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 1610
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    if-eqz v0, :cond_0

    .line 1611
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1612
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsFavoriteImage:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsFavoriteImage:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 5
    .param p1, "musicData"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .prologue
    .line 967
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->loadLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->resetLrc(Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicApi:Lcom/acloud/stub/localmusic/network/api/MusicApi;

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 970
    new-instance v3, Lcom/acloud/stub/localmusic/QtActivity$8;

    new-instance v4, Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;

    invoke-direct {v4}, Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;-><init>()V

    invoke-direct {v3, p0, v4, p1}, Lcom/acloud/stub/localmusic/QtActivity$8;-><init>(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 969
    invoke-virtual {v0, v1, v2, v3}, Lcom/acloud/stub/localmusic/network/api/MusicApi;->searchLrc(Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V

    .line 1025
    :cond_0
    return-void
.end method

.method private updatePlayList(Z)V
    .locals 5
    .param p1, "isNeedChangData"    # Z

    .prologue
    .line 1582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    .local v0, "currectPlayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v2

    .line 1584
    .local v2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz p1, :cond_1

    .line 1585
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1588
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v3, v0}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setData(Ljava/util/List;)V

    .line 1593
    :goto_1
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    iget v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v3, v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v1

    .line 1594
    .local v1, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    if-nez v1, :cond_2

    .line 1603
    :goto_2
    return-void

    .line 1585
    .end local v1    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 1586
    .restart local v1    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1590
    .end local v1    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    :cond_1
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1597
    .restart local v1    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    :cond_2
    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1598
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicNameView:Lcom/acloud/stub/ui/view/MarqueeView;

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Lcom/acloud/stub/ui/view/MarqueeView;->setText(Ljava/lang/CharSequence;)V

    .line 1599
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1602
    :cond_3
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->updateCollectState()V

    goto :goto_2
.end method

.method private whichDataInTotalList(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v1

    .line 838
    .local v1, "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 843
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 839
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 840
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    goto :goto_1

    .line 838
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    .line 1252
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 1253
    .local v3, "state":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1254
    .local v0, "keycode":I
    sget-object v4, Lcom/acloud/stub/localmusic/QtActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dispatchKeyEvent keycode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    if-nez v3, :cond_0

    .line 1256
    sparse-switch v0, :sswitch_data_0

    .line 1283
    :cond_0
    invoke-super {p0, p1}, Lcom/acloud/activity/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 1259
    :sswitch_0
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getSelectPosition()I

    move-result v1

    .line 1260
    .local v1, "selection_down":I
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_1

    .line 1261
    const/4 v1, 0x0

    .line 1263
    :cond_1
    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->setCurectPlayListSelection(I)V

    move v4, v5

    .line 1264
    goto :goto_0

    .line 1267
    .end local v1    # "selection_down":I
    :sswitch_1
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getSelectPosition()I

    move-result v2

    .line 1268
    .local v2, "selection_up":I
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    .line 1269
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1271
    :cond_2
    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->setCurectPlayListSelection(I)V

    move v4, v5

    .line 1272
    goto :goto_0

    .line 1274
    .end local v2    # "selection_up":I
    :sswitch_2
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getSelectPosition()I

    move-result v4

    iget v6, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    if-ne v4, v6, :cond_3

    .line 1275
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->playOrPause()V

    move v4, v5

    .line 1276
    goto :goto_0

    .line 1278
    :cond_3
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getSelectPosition()I

    move-result v4

    iput v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    .line 1279
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v6}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getSelectPosition()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-direct {p0, v4}, Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    move v4, v5

    .line 1280
    goto :goto_0

    .line 1256
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 258
    const/high16 v0, 0x7f030000

    return v0
.end method

.method protected initMusicData()V
    .locals 7

    .prologue
    .line 895
    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 896
    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 897
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v5

    .line 898
    .local v5, "totalMusicInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 930
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 904
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x1

    .line 905
    .local v2, "isNeedAdd":Z
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v6}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v4

    .line 906
    .local v4, "singer":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v6}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getDirPath()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "dir":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 914
    :goto_2
    if-eqz v2, :cond_2

    .line 915
    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    :cond_2
    const/4 v2, 0x1

    .line 918
    const/4 v3, 0x0

    :goto_3
    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_6

    .line 925
    :goto_4
    if-eqz v2, :cond_3

    .line 926
    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 908
    :cond_4
    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 909
    const/4 v2, 0x0

    .line 910
    goto :goto_2

    .line 907
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 919
    :cond_6
    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 920
    const/4 v2, 0x0

    .line 921
    goto :goto_4

    .line 918
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method protected initWindowData()V
    .locals 2

    .prologue
    .line 874
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 875
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mWindowWidth:I

    .line 876
    return-void
.end method

.method protected isFinishAinm()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method protected isShowVolumeBar()Z
    .locals 1

    .prologue
    .line 2100
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2048
    if-eqz p2, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 2053
    :goto_0
    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/acloud/utils/VolumeControlUtils;->setStreamMute(ZLandroid/content/Context;)V

    .line 2054
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/acloud/utils/VolumeControlUtils;->getVolume(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/acloud/utils/VolumeControlUtils;->getVolume(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 2056
    return-void

    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 454
    .local v0, "clickTime":J
    iget-wide v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLastClickTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iput-wide v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLastClickTime:J

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 492
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "xy.android.search.media"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/acloud/stub/localmusic/QtActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    if-eq v3, v8, :cond_0

    .line 495
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    add-int/lit8 v3, v3, -0x2

    if-le v3, v8, :cond_2

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    add-int/lit8 v3, v3, -0x2

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 462
    :sswitch_1
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/acloud/AppManager;->gotoHome(Landroid/content/Context;)V

    goto :goto_0

    .line 465
    :sswitch_2
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/acloud/AppManager;->AppExit(Landroid/content/Context;)V

    goto :goto_0

    .line 468
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    .local v2, "musicListIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->startActivitySafety(Landroid/content/Intent;)Z

    goto :goto_0

    .line 472
    .end local v2    # "musicListIntent":Landroid/content/Intent;
    :sswitch_4
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->changePlayMode()V

    goto :goto_0

    .line 475
    :sswitch_5
    iput-boolean v9, p0, Lcom/acloud/stub/localmusic/QtActivity;->isNeedSetSelection:Z

    .line 476
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->onPreMusic()V

    goto :goto_0

    .line 479
    :sswitch_6
    iput-boolean v9, p0, Lcom/acloud/stub/localmusic/QtActivity;->isNeedSetSelection:Z

    .line 480
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->onNextMusic()V

    goto :goto_0

    .line 483
    :sswitch_7
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->gotoApsSettings()V

    goto :goto_0

    .line 486
    :sswitch_8
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->setMusicCollect()V

    goto :goto_0

    .line 489
    :sswitch_9
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->playOrPause()V

    goto :goto_0

    .line 495
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 460
    :sswitch_data_0
    .sparse-switch
        0x7f0b001e -> :sswitch_0
        0x7f0b0027 -> :sswitch_8
        0x7f0b002a -> :sswitch_3
        0x7f0b002b -> :sswitch_4
        0x7f0b002c -> :sswitch_5
        0x7f0b002d -> :sswitch_9
        0x7f0b002e -> :sswitch_6
        0x7f0b002f -> :sswitch_7
        0x7f0b007d -> :sswitch_1
        0x7f0b007f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "localmusic_activity_isrunning"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "popup_volume_bar"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->unbindMediaService()V

    .line 422
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mHttpDownloadServer:Lcom/acloud/network/http/HttpDownloadServer;

    invoke-virtual {v1}, Lcom/acloud/network/http/HttpDownloadServer;->cancelAllTask()V

    .line 423
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v1}, Lcom/acloud/AndroidTimer;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v1}, Lcom/acloud/AndroidTimer;->stop()V

    .line 432
    :cond_0
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    .line 433
    iget v4, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    move-object v8, p0

    .line 432
    invoke-virtual/range {v1 .. v8}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V

    .line 434
    invoke-static {}, Lcom/acloud/PlayStateControlManager;->removeInstance()V

    .line 435
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->removeInstance()V

    .line 436
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->removeIntance()V

    .line 438
    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->removeInstance()V

    .line 439
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    if-eqz v1, :cond_1

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->stop()V

    .line 442
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->stopSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/acloud/activity/BaseActivity;->onDestroy()V

    .line 448
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onInitData()V
    .locals 3

    .prologue
    .line 2105
    invoke-super {p0}, Lcom/acloud/activity/BaseActivity;->onInitData()V

    .line 2107
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->onExternalCallMusic(Landroid/content/Intent;)V

    .line 2108
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "localmusic_activity_isrunning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2110
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 2112
    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/acloud/utils/VolumeControlUtils;->setVolumeControlInterface(Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;Landroid/content/Context;)V

    .line 2114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->setViewEnable(Z)V

    .line 2116
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->initActivityCallBack()V

    .line 2118
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->bindMediaService()V

    .line 2119
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->initReceive()V

    .line 2121
    invoke-static {}, Lcom/acloud/network/http/HttpDownloadServer;->getInstance()Lcom/acloud/network/http/HttpDownloadServer;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mHttpDownloadServer:Lcom/acloud/network/http/HttpDownloadServer;

    .line 2123
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->initTimer()V

    .line 2124
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1881
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isNeedSetSelection:Z

    .line 1882
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/acloud/stub/localmusic/QtActivity;->onClickMusic(IZ)V

    .line 1883
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    const/4 v1, 0x7

    .line 2128
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    if-eqz v0, :cond_0

    .line 2129
    if-ne p1, v1, :cond_1

    .line 2130
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    .line 2151
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/acloud/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2131
    :cond_1
    if-ne p1, v2, :cond_2

    .line 2132
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0

    .line 2133
    :cond_2
    if-ne p1, v3, :cond_3

    .line 2134
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0

    .line 2135
    :cond_3
    if-ne p1, v4, :cond_4

    .line 2136
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0

    .line 2137
    :cond_4
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    .line 2138
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0

    .line 2139
    :cond_5
    const/16 v0, 0xc

    if-ne p1, v0, :cond_6

    .line 2140
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0

    .line 2141
    :cond_6
    const/16 v0, 0xd

    if-ne p1, v0, :cond_7

    .line 2142
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    invoke-interface {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0

    .line 2143
    :cond_7
    const/16 v0, 0xe

    if-ne p1, v0, :cond_8

    .line 2144
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    invoke-interface {v0, v2}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0

    .line 2145
    :cond_8
    const/16 v0, 0xf

    if-ne p1, v0, :cond_9

    .line 2146
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    invoke-interface {v0, v3}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0

    .line 2147
    :cond_9
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    invoke-interface {v0, v4}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 1
    .param p1, "isMute"    # Z

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2068
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity;->onExternalCallMusic(Landroid/content/Intent;)V

    .line 413
    invoke-super {p0, p1}, Lcom/acloud/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1246
    invoke-super {p0}, Lcom/acloud/activity/BaseActivity;->onPause()V

    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->onPause:Z

    .line 1248
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1854
    :try_start_0
    iget-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickTimeBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    if-eqz v1, :cond_0

    .line 1855
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1856
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {v1, p2}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->seekTo(I)V

    .line 1857
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1859
    int-to-long v2, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/acloud/stub/localmusic/QtActivity;->setTimeText(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/acloud/stub/ui/view/VerticalSeekBar;IZ)V
    .locals 3
    .param p1, "VerticalSeekBar"    # Lcom/acloud/stub/ui/view/VerticalSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isClickVolumeBar:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickVolumeBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "progress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 2076
    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acloud/utils/VolumeControlUtils;->isMute(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2077
    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/acloud/utils/VolumeControlUtils;->setVolume(ILandroid/content/Context;)V

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2080
    if-eqz p2, :cond_1

    .line 2081
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2086
    :goto_0
    return-void

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1289
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isFirst:Z

    if-nez v0, :cond_5

    .line 1290
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->isSameList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V

    .line 1291
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->resumeCheckFileExsits()V

    .line 1292
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1293
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_0

    .line 1294
    iput v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    .line 1296
    :cond_0
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    .line 1297
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayPath(Ljava/lang/String;)V

    .line 1299
    :cond_1
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->initMusicData()V

    .line 1300
    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V

    .line 1301
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->getCurPlayerMusicIndex(Ljava/lang/String;)V

    .line 1303
    iget v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->setCurectPlayListSelection(I)V

    .line 1304
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v0, v3}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setPlayPosition(I)V

    .line 1309
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isFirst:Z

    if-eqz v0, :cond_3

    .line 1310
    iput-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->isFirst:Z

    .line 1313
    :cond_3
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/acloud/utils/VolumeControlUtils;->getVolume(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/acloud/utils/VolumeControlUtils;->getVolume(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 1315
    iput-boolean v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->onPause:Z

    .line 1317
    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acloud/utils/VolumeControlUtils;->isMute(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1318
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1322
    :goto_2
    invoke-super {p0}, Lcom/acloud/activity/BaseActivity;->onResume()V

    .line 1323
    return-void

    :cond_4
    move v0, v2

    .line 1290
    goto/16 :goto_0

    .line 1305
    :cond_5
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isHaveNoFile:Z

    if-nez v0, :cond_2

    .line 1306
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getMusicList()V

    goto :goto_1

    .line 1320
    :cond_6
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickTimeBar:Z

    .line 1871
    return-void
.end method

.method public onStartTrackingTouch(Lcom/acloud/stub/ui/view/VerticalSeekBar;)V
    .locals 1
    .param p1, "VerticalSeekBar"    # Lcom/acloud/stub/ui/view/VerticalSeekBar;

    .prologue
    .line 2090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickVolumeBar:Z

    .line 2091
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1876
    return-void
.end method

.method public onStopTrackingTouch(Lcom/acloud/stub/ui/view/VerticalSeekBar;)V
    .locals 1
    .param p1, "VerticalSeekBar"    # Lcom/acloud/stub/ui/view/VerticalSeekBar;

    .prologue
    .line 2095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->isClickVolumeBar:Z

    .line 2096
    return-void
.end method

.method protected onViewCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acloud/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 265
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "popup_volume_bar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mDetailsBtn:Landroid/widget/ImageView;

    .line 268
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPreBtn:Landroid/widget/ImageView;

    .line 269
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mNextBtn:Landroid/widget/ImageView;

    .line 271
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mDetailsBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPreBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mSongPlaymodeBtn:Landroid/widget/ImageView;

    .line 279
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSongPlayMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->songPlaymode:I

    .line 280
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/QtActivity;->setPlaymodeBtnBackground()V

    .line 281
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mSongPlaymodeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayOrPauseBtn:Landroid/widget/ImageView;

    .line 284
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mPlayOrPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;

    .line 287
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTotalTimeText:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTimeText:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 291
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLocationBtn:Landroid/widget/ImageView;

    .line 292
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLocationBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcListView:Landroid/widget/ListView;

    .line 295
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    .line 296
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 299
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    .line 300
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    .line 301
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 304
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTitleView:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/ui/view/MarqueeView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicNameView:Lcom/acloud/stub/ui/view/MarqueeView;

    .line 306
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistView:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/ui/view/CircleImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mArtistImageView:Lcom/acloud/stub/ui/view/CircleImageView;

    .line 310
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsFavoriteImage:Landroid/widget/ImageView;

    .line 311
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mIsFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;

    .line 318
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 330
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 331
    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    .line 332
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 333
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeText:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/ui/view/VerticalSeekBar;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    .line 335
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setOnVerticalSeekBarChangeListener(Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;)V

    .line 336
    return-void
.end method

.method public onVolume(I)V
    .locals 2
    .param p1, "nVolume"    # I

    .prologue
    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nVolume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2062
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity;->mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 2063
    return-void
.end method

.method protected playOrPause()V
    .locals 4

    .prologue
    .line 1832
    :try_start_0
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->getState()I

    move-result v1

    .line 1833
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1834
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V

    .line 1848
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 1835
    .restart local v1    # "state":I
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1836
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1843
    .end local v1    # "state":I
    :catch_0
    move-exception v0

    .line 1845
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1838
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "state":I
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    iget v3, p0, Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 1839
    iget-boolean v2, p0, Lcom/acloud/stub/localmusic/QtActivity;->isFirst:Z

    if-eqz v2, :cond_0

    .line 1840
    new-instance v2, Landroid/content/Intent;

    const-string v3, "xy.voice.play"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/acloud/stub/localmusic/QtActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
