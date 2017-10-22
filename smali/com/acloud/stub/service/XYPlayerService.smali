.class public Lcom/acloud/stub/service/XYPlayerService;
.super Landroid/app/Service;
.source "XYPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/service/XYPlayerService$Constant;,
        Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;,
        Lcom/acloud/stub/service/XYPlayerService$MusicCallback;,
        Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;,
        Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;,
        Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUF_SIZE:I = 0x400

.field public static final DEFAULT_PLAYER:I = 0x0

.field private static FFTING:Z = false

.field public static final FFT_DATA_SIZE:I = 0x80

.field private static final INIT_FINISH:I = 0x4009

.field private static NOTIFICTION_ID:I = 0x0

.field public static final PAUSED_STATE:I = 0x2

.field public static final PLAYING_STATE:I = 0x1

.field public static final PLAY_LOCAL:I = 0x0

.field public static final PLAY_LOCAL_H:I = 0x1

.field public static final PLAY_ONLINE:I = 0x2

.field private static final SHOW_PROGRESS:I = 0x4008

.field public static final STATE_BUFFERED:I = 0xa

.field public static final STATE_BUFFERING:I = 0x9

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field public static final STATE_RESUME:I = 0x7

.field public static final STATE_SUSPEND:I = 0x6

.field public static final STATE_SUSPEND_UNSUPPORTED:I = 0x8

.field public static STATE_VAL:[Ljava/lang/String; = null

.field public static final STOPED_STATE:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final VLC_PLAYER:I = 0x2

.field public static final VTM_PLAYER:I = 0x1

.field private static final WHAT_MEDIAPLAYER_CHANGE:I = 0x1

.field private static final WHAT_MEDIAPLAYER_VISUALIZER:I = 0x2

.field private static final WHAT_SHOW_VISUALIZER:I = 0x3

.field private static mAction:Ljava/lang/String;

.field private static mPlayerState:I


# instance fields
.field private extras:[Ljava/lang/String;

.field private isLower:Z

.field private isLowerVol:Z

.field private isRegisterMediaButton:Z

.field private isShowVisualizer:Z

.field private mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBindler:Landroid/os/IBinder;

.field private mBufferSize:I

.field private mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

.field private mCurWidgetDuration:J

.field private mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

.field private mCurrectTime:J

.field private mCurrentPlayRes:I

.field private mCurrentState:I

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mIsFirst:Z

.field private mIsInitintVtm:Z

.field private mLibPlayerRec:Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;

.field mMediaButtonReceiverComponent:Landroid/content/ComponentName;

.field private mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

.field private mMemmoryTimer:Lcom/acloud/AndroidTimer;

.field private mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

.field private mMusicId:I

.field private mMusicName:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnQueryLisenter:Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;

.field private mPath:Ljava/lang/String;

.field private final mPlayerHandler:Landroid/os/Handler;

.field private mPlayerMode:I

.field private mPosition:I

.field mRemoteControlClientCompat:Lcom/acloud/stub/reciver/RemoteControlClientCompat;

.field private mSeekTimer:Lcom/acloud/AndroidTimer;

.field private mSeekToPosition:I

.field private mTotalTime:J

.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field private mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

.field private mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v0, "PlayerService"

    sput-object v0, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    .line 117
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stateerror"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "stateidle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 118
    const-string v2, "statepreparing"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "stateprepared"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "stateplaying"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "statepaused"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 119
    const-string v2, "statecompleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "statesuspend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "stateresume"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 120
    const-string v2, "stateunsupported"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "statebuffering"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "statebuffered"

    aput-object v2, v0, v1

    .line 117
    sput-object v0, Lcom/acloud/stub/service/XYPlayerService;->STATE_VAL:[Ljava/lang/String;

    .line 138
    sput v3, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    .line 152
    const-string v0, ""

    sput-object v0, Lcom/acloud/stub/service/XYPlayerService;->mAction:Ljava/lang/String;

    .line 157
    sput-boolean v3, Lcom/acloud/stub/service/XYPlayerService;->FFTING:Z

    .line 210
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-boolean v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mIsFirst:Z

    .line 114
    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-direct {v0, p0}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mBindler:Landroid/os/IBinder;

    .line 122
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->extras:[Ljava/lang/String;

    .line 124
    iput v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 125
    iput v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentPlayRes:I

    .line 128
    iput-wide v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicId:I

    .line 131
    const/16 v0, 0x400

    iput v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mBufferSize:I

    .line 133
    iput-wide v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mTotalTime:J

    .line 134
    iput-wide v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrectTime:J

    .line 136
    iput-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    .line 146
    iput-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    .line 154
    iput-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 160
    iput-wide v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetDuration:J

    .line 162
    iput-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    .line 169
    iput v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerMode:I

    .line 171
    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$1;

    invoke-direct {v0, p0}, Lcom/acloud/stub/service/XYPlayerService$1;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mHandler:Landroid/os/Handler;

    .line 196
    iput-boolean v3, p0, Lcom/acloud/stub/service/XYPlayerService;->isLower:Z

    .line 205
    iput-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekTimer:Lcom/acloud/AndroidTimer;

    .line 206
    iput-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    .line 212
    iput-boolean v5, p0, Lcom/acloud/stub/service/XYPlayerService;->isShowVisualizer:Z

    .line 218
    iput-boolean v3, p0, Lcom/acloud/stub/service/XYPlayerService;->isRegisterMediaButton:Z

    .line 225
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->DEFAULT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    .line 229
    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$2;

    invoke-direct {v0, p0}, Lcom/acloud/stub/service/XYPlayerService$2;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    .line 295
    iput-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    .line 304
    new-instance v0, Lcom/acloud/stub/service/XYPlayerService$3;

    invoke-direct {v0, p0}, Lcom/acloud/stub/service/XYPlayerService$3;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mOnQueryLisenter:Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;

    .line 881
    iput-boolean v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mIsInitintVtm:Z

    .line 1200
    iput v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mPosition:I

    .line 1201
    iput v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekToPosition:I

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/service/XYPlayerService;)I
    .locals 1

    .prologue
    .line 1203
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/service/XYPlayerService;J)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/acloud/stub/service/XYPlayerService;->progressRefresh(J)V

    return-void
.end method

.method static synthetic access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->killSelf()V

    return-void
.end method

.method static synthetic access$12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    return-object v0
.end method

.method static synthetic access$14(Lcom/acloud/stub/service/XYPlayerService;)J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetDuration:J

    return-wide v0
.end method

.method static synthetic access$15(Lcom/acloud/stub/service/XYPlayerService;Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/acloud/stub/service/XYPlayerService;->isLower:Z

    return-void
.end method

.method static synthetic access$16(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1469
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->lowerVolume()V

    return-void
.end method

.method static synthetic access$17(Lcom/acloud/stub/service/XYPlayerService;)Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isLower:Z

    return v0
.end method

.method static synthetic access$18(Lcom/acloud/stub/service/XYPlayerService;)Z
    .locals 1

    .prologue
    .line 2037
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->isGalaVolumeAppRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/stub/service/XYPlayerService;Z)V
    .locals 0

    .prologue
    .line 881
    iput-boolean p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mIsInitintVtm:Z

    return-void
.end method

.method static synthetic access$20(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/acloud/stub/service/XYPlayerService;Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/acloud/stub/service/XYPlayerService;->setActivityCallBack(Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;)V

    return-void
.end method

.method static synthetic access$22(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/AndroidTimer;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekTimer:Lcom/acloud/AndroidTimer;

    return-object v0
.end method

.method static synthetic access$23(Lcom/acloud/stub/service/XYPlayerService;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrectTime:J

    return-wide v0
.end method

.method static synthetic access$24(Lcom/acloud/stub/service/XYPlayerService;)J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mTotalTime:J

    return-wide v0
.end method

.method static synthetic access$25(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/AndroidTimer;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    return-object v0
.end method

.method static synthetic access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    return-object v0
.end method

.method static synthetic access$27(Lcom/acloud/stub/service/XYPlayerService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$28(Lcom/acloud/stub/service/XYPlayerService;I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    return-void
.end method

.method static synthetic access$29(Lcom/acloud/stub/service/XYPlayerService;J)V
    .locals 1

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/stub/service/XYPlayerService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/acloud/stub/service/XYPlayerService;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$32(Lcom/acloud/stub/service/XYPlayerService;Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    return-void
.end method

.method static synthetic access$33(I)V
    .locals 0

    .prologue
    .line 138
    sput p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    return-void
.end method

.method static synthetic access$34(Lcom/acloud/stub/service/XYPlayerService;)Landroid/media/audiofx/Visualizer;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    return-object v0
.end method

.method static synthetic access$35(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1244
    invoke-static {p0}, Lcom/acloud/stub/service/XYPlayerService;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$36(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$MusicCallback;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    return-object v0
.end method

.method static synthetic access$37(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1571
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->sendError()V

    return-void
.end method

.method static synthetic access$38()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/acloud/stub/service/XYPlayerService;->FFTING:Z

    return v0
.end method

.method static synthetic access$39(Z)V
    .locals 0

    .prologue
    .line 157
    sput-boolean p0, Lcom/acloud/stub/service/XYPlayerService;->FFTING:Z

    return-void
.end method

.method static synthetic access$4(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 978
    invoke-direct {p0, p1, p2}, Lcom/acloud/stub/service/XYPlayerService;->playMusic(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$40()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    return v0
.end method

.method static synthetic access$5(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/acloud/stub/service/XYPlayerService;)I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerMode:I

    return v0
.end method

.method static synthetic access$7(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0, p1, p2}, Lcom/acloud/stub/service/XYPlayerService;->selectPlayer(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8(Lcom/acloud/stub/service/XYPlayerService;Z)V
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/acloud/stub/service/XYPlayerService;->isShowVisualizer:Z

    return-void
.end method

.method static synthetic access$9(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/player/XYMediaPlayer;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    return-object v0
.end method

.method private checkAndShowWave(Lcom/acloud/stub/player/XYMediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Lcom/acloud/stub/player/XYMediaPlayer;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 1177
    sput-boolean v0, Lcom/acloud/stub/service/XYPlayerService;->FFTING:Z

    .line 1180
    :try_start_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audiovisualizererror"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback;->onCallback([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isShowVisualizer:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/acloud/stub/service/XYPlayerService;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    const-string v1, "It\'s default mediaplayer, can use Visualizer draw."

    invoke-static {v0, v1}, Lcom/acloud/utils/Logcat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    .line 1190
    const-wide/16 v2, 0xdac

    .line 1189
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1198
    :goto_1
    return-void

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 1195
    const-wide/32 v2, 0x493e0

    .line 1194
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getRunningTaskInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2085
    .line 2086
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2085
    check-cast v1, Landroid/app/ActivityManager;

    .line 2088
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 2090
    .local v0, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2091
    const/4 v3, 0x0

    .line 2096
    :goto_0
    return-object v3

    .line 2094
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2096
    .local v2, "maxNum":I
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method private getStreamMaxVolume()I
    .locals 3

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1465
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1464
    check-cast v0, Landroid/media/AudioManager;

    .line 1466
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    return v1
.end method

.method private getVolume()I
    .locals 4

    .prologue
    .line 1449
    :try_start_0
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1450
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1449
    check-cast v0, Landroid/media/AudioManager;

    .line 1451
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1453
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    return v2

    .line 1452
    :catch_0
    move-exception v1

    .line 1453
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initPlayStateControlManager()V
    .locals 3

    .prologue
    .line 451
    invoke-static {}, Lcom/acloud/PlayStateControlManager;->getInstance()Lcom/acloud/PlayStateControlManager;

    move-result-object v0

    new-instance v1, Lcom/acloud/stub/service/XYPlayerService$7;

    invoke-direct {v1, p0}, Lcom/acloud/stub/service/XYPlayerService$7;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    .line 531
    new-instance v2, Lcom/acloud/stub/service/XYPlayerService$8;

    invoke-direct {v2, p0}, Lcom/acloud/stub/service/XYPlayerService$8;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    .line 451
    invoke-virtual {v0, p0, v1, v2}, Lcom/acloud/PlayStateControlManager;->init(Landroid/content/Context;Lcom/acloud/PlayStateControlManager$PlayStateInterface;Lcom/acloud/PlayStateControlManager$MountedStateInterface;)V

    .line 561
    invoke-static {}, Lcom/acloud/PlayStateControlManager;->getInstance()Lcom/acloud/PlayStateControlManager;

    move-result-object v0

    new-instance v1, Lcom/acloud/stub/service/XYPlayerService$9;

    invoke-direct {v1, p0}, Lcom/acloud/stub/service/XYPlayerService$9;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/acloud/PlayStateControlManager;->initVoiceControlInterface(Lcom/acloud/PlayStateControlManager$VoiceControlInterface;)Z

    .line 596
    return-void
.end method

.method private initVtmPlayer(Z)V
    .locals 3
    .param p1, "isPlay"    # Z

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mIsInitintVtm:Z

    if-eqz v0, :cond_0

    .line 971
    :goto_0
    return-void

    .line 952
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mIsInitintVtm:Z

    .line 954
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init Player isPlay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/acloud/stub/service/XYPlayerService$10;

    invoke-direct {v1, p0, p1}, Lcom/acloud/stub/service/XYPlayerService$10;-><init>(Lcom/acloud/stub/service/XYPlayerService;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 970
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static isDefMediaPlayer(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1245
    if-nez p0, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1249
    const-class v2, Lcom/acloud/stub/player/DefMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 1248
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGalaVolumeAppRunning()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2038
    const/4 v2, 0x0

    .line 2040
    .local v2, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :try_start_0
    invoke-static {p0}, Lcom/acloud/stub/service/XYPlayerService;->getRunningTaskInfo(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2045
    if-nez v2, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return v3

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2049
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2050
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.acloud.stub.newonlinemusic"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2051
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.acloud.stub.news"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2052
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.acloud.stub.cdplay"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2053
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.acloud.stub.newonlineradio"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2054
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.acloud.stub.video"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2055
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.acloud.stub.localradio"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2056
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.wifi.pnp.player"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2058
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isVlcMediaPlayer(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1261
    if-nez p0, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1265
    const-class v2, Lcom/acloud/stub/player/VlcMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 1264
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVtmInited()Z
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vov/vitamio/Vitamio;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isVtmMediaPlayer(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1253
    if-nez p0, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1257
    const-class v2, Lcom/acloud/stub/player/VtmMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 1256
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private killSelf()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 828
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    const-string v3, ""

    .line 829
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    move v4, v2

    move-object v8, p0

    .line 828
    invoke-virtual/range {v1 .. v8}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V

    .line 830
    iget v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 831
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->stop()V

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->stopSelf()V

    .line 836
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 837
    return-void
.end method

.method private lowerVolume()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 1470
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1471
    sget-object v5, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    const-string v6, "lowerVolume==============="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/acloud/stub/service/XYPlayerService;->isLowerVol:Z

    .line 1473
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->getVolume()I

    move-result v0

    .line 1474
    .local v0, "curVol":I
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->getStreamMaxVolume()I

    move-result v1

    .line 1475
    .local v1, "maxVol":I
    const/high16 v3, 0x40c00000    # 6.0f

    .line 1476
    .local v3, "p":F
    if-lt v0, v7, :cond_2

    const/16 v5, 0xa

    if-ge v0, v5, :cond_2

    .line 1477
    const/high16 v3, 0x40200000    # 2.5f

    .line 1481
    :cond_0
    :goto_0
    int-to-float v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1482
    .local v4, "vol":F
    div-float v2, v4, v3

    .line 1484
    .local v2, "newVol":F
    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    if-eqz v5, :cond_1

    .line 1485
    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v5, v2, v2}, Lcom/acloud/stub/player/XYMediaPlayer;->setVolume(FF)V

    .line 1488
    .end local v0    # "curVol":I
    .end local v1    # "maxVol":I
    .end local v2    # "newVol":F
    .end local v3    # "p":F
    .end local v4    # "vol":F
    :cond_1
    return-void

    .line 1478
    .restart local v0    # "curVol":I
    .restart local v1    # "maxVol":I
    .restart local v3    # "p":F
    :cond_2
    if-ltz v0, :cond_0

    if-ge v0, v7, :cond_0

    .line 1479
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private onLinebuffered()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1560
    iget v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentPlayRes:I

    if-ne v0, v1, :cond_0

    .line 1566
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/acloud/stub/service/XYPlayerService;->mAction:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1567
    sget-object v2, Lcom/acloud/stub/service/XYPlayerService;->STATE_VAL:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 1566
    invoke-direct {p0, v0}, Lcom/acloud/stub/service/XYPlayerService;->sendMainUIBroadcast([Ljava/lang/String;)V

    .line 1569
    :cond_0
    return-void
.end method

.method private onLinebuffering()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1547
    iget v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentPlayRes:I

    if-ne v0, v1, :cond_0

    .line 1554
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/acloud/stub/service/XYPlayerService;->mAction:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1555
    sget-object v2, Lcom/acloud/stub/service/XYPlayerService;->STATE_VAL:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 1554
    invoke-direct {p0, v0}, Lcom/acloud/stub/service/XYPlayerService;->sendMainUIBroadcast([Ljava/lang/String;)V

    .line 1557
    :cond_0
    return-void
.end method

.method private playMusic(Ljava/lang/String;I)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playerMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 979
    iput p2, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerMode:I

    .line 980
    if-ne p2, v3, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->isVtmInited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 982
    invoke-direct {p0, v3}, Lcom/acloud/stub/service/XYPlayerService;->initVtmPlayer(Z)V

    .line 1012
    :goto_0
    return-void

    .line 987
    :cond_0
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->isVtmInited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 988
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/acloud/stub/service/XYPlayerService;->initVtmPlayer(Z)V

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    if-eqz v0, :cond_6

    .line 993
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_4

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->isVtmMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v3, :cond_4

    .line 995
    :cond_3
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->isVlcMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    .line 996
    :cond_4
    const-string v0, "QQ"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s default media player :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 997
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 998
    const-string v2, " and use default :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 999
    const-string v2, ", will release ane new player"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 996
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->release()V

    .line 1001
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1002
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1003
    const-wide/16 v2, 0x12c

    .line 1002
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1007
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/acloud/stub/service/XYPlayerService;->selectPlayer(Ljava/lang/String;I)V

    goto :goto_0

    .line 1010
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/acloud/stub/service/XYPlayerService;->selectPlayer(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private progressRefresh(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/16 v2, 0x4008

    .line 190
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    return-void
.end method

.method private registerMediaButtonEventReceiver()V
    .locals 2

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isRegisterMediaButton:Z

    if-nez v0, :cond_0

    .line 817
    const-string v0, "MMM"

    .line 818
    const-string v1, "---------------registerMediaButtonEventReceiver------------------"

    .line 817
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v0, Landroid/content/ComponentName;

    .line 820
    const-class v1, Lcom/acloud/stub/reciver/MusicIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 819
    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    .line 821
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isRegisterMediaButton:Z

    .line 824
    :cond_0
    return-void
.end method

.method private selectPlayer(Ljava/lang/String;I)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playerMode"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1016
    :try_start_0
    const-string v3, "QQ"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Use default mediaplayer is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1017
    const-string v5, ", mMediaPlayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1016
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1019
    invoke-static {p1}, Lcom/acloud/stub/utils/PathUtils;->getSpecialSymbolsTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1020
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    if-nez v3, :cond_1

    .line 1022
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1021
    invoke-static {p2, v3}, Lcom/acloud/stub/player/XYMediaPlayer;->getMediaPlayer(ILandroid/content/Context;)Lcom/acloud/stub/player/XYMediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    .line 1023
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    new-instance v4, Lcom/acloud/stub/service/XYPlayerService$11;

    invoke-direct {v4, p0}, Lcom/acloud/stub/service/XYPlayerService$11;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    invoke-virtual {v3, v4}, Lcom/acloud/stub/player/XYMediaPlayer;->setOnPreparedListener(Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;)V

    .line 1072
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    new-instance v4, Lcom/acloud/stub/service/XYPlayerService$12;

    invoke-direct {v4, p0}, Lcom/acloud/stub/service/XYPlayerService$12;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    invoke-virtual {v3, v4}, Lcom/acloud/stub/player/XYMediaPlayer;->setOnCompletionListener(Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;)V

    .line 1110
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    new-instance v4, Lcom/acloud/stub/service/XYPlayerService$13;

    invoke-direct {v4, p0}, Lcom/acloud/stub/service/XYPlayerService$13;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    invoke-virtual {v3, v4}, Lcom/acloud/stub/player/XYMediaPlayer;->setOnErrorListener(Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;)V

    .line 1120
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    new-instance v4, Lcom/acloud/stub/service/XYPlayerService$14;

    invoke-direct {v4, p0}, Lcom/acloud/stub/service/XYPlayerService$14;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    invoke-virtual {v3, v4}, Lcom/acloud/stub/player/XYMediaPlayer;->setOnBufferingUpdateListener(Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;)V

    .line 1129
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    new-instance v4, Lcom/acloud/stub/service/XYPlayerService$15;

    invoke-direct {v4, p0}, Lcom/acloud/stub/service/XYPlayerService$15;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    invoke-virtual {v3, v4}, Lcom/acloud/stub/player/XYMediaPlayer;->setOnInfoListener(Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;)V

    .line 1147
    :goto_0
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lcom/acloud/stub/player/XYMediaPlayer;->setVolume(FF)V

    .line 1148
    iget v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentPlayRes:I

    if-eq v3, v8, :cond_0

    .line 1149
    iget v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentPlayRes:I

    if-ne v3, v7, :cond_3

    .line 1150
    :cond_0
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1151
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1150
    invoke-virtual {v3, v4, v5}, Lcom/acloud/stub/player/XYMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1159
    :goto_1
    const/4 v3, 0x1

    iput v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1160
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v3}, Lcom/acloud/stub/player/XYMediaPlayer;->prepareAsync()V

    .line 1174
    :goto_2
    return-void

    .line 1138
    :cond_1
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v3}, Lcom/acloud/stub/player/XYMediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1139
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v3}, Lcom/acloud/stub/player/XYMediaPlayer;->stop()V

    .line 1140
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v3}, Lcom/acloud/stub/service/XYPlayerService;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1141
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 1144
    :cond_2
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v3}, Lcom/acloud/stub/player/XYMediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "play : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    iput v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1164
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->sendError()V

    goto :goto_2

    .line 1153
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1155
    .local v2, "fis":Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/acloud/stub/player/XYMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1156
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1165
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "play : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    iput v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1168
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->sendError()V

    goto :goto_2

    .line 1169
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "play : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    iput v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1172
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->sendError()V

    goto/16 :goto_2
.end method

.method private sendError()V
    .locals 3

    .prologue
    .line 1572
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1578
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendError mCurrentState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/acloud/stub/service/XYPlayerService;->playMusic(Ljava/lang/String;I)V

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->isVtmMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1588
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/acloud/stub/service/XYPlayerService;->playMusic(Ljava/lang/String;I)V

    goto :goto_0

    .line 1592
    :cond_2
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    if-eqz v0, :cond_3

    .line 1593
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    invoke-interface {v0}, Lcom/acloud/stub/service/XYPlayerService$MusicCallback;->onError()V

    .line 1596
    :cond_3
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPause()V

    goto :goto_0
.end method

.method private sendMainUIBroadcast([Ljava/lang/String;)V
    .locals 2
    .param p1, "contents"    # [Ljava/lang/String;

    .prologue
    .line 1603
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1604
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.acloud.intent.android.MAINUI_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    invoke-virtual {p0, v0}, Lcom/acloud/stub/service/XYPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1607
    return-void
.end method

.method private setActivityCallBack(Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    .line 448
    return-void
.end method

.method private setProgress()I
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/16 v1, 0x1f4

    .line 1204
    const/4 v3, 0x0

    .line 1205
    .local v3, "position":I
    iget-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    if-nez v4, :cond_0

    move v0, v1

    .line 1241
    :goto_0
    return v0

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isInPlaybackState()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1210
    iget-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v4}, Lcom/acloud/stub/player/XYMediaPlayer;->getCurrentPosition()I

    move-result v3

    .line 1211
    iget-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v4}, Lcom/acloud/stub/player/XYMediaPlayer;->getDuration()I

    move-result v2

    .line 1213
    .local v2, "duration":I
    const v4, 0x6ddd00

    if-le v2, v4, :cond_1

    move v0, v1

    .line 1214
    goto :goto_0

    .line 1217
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    if-eqz v1, :cond_2

    .line 1218
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    int-to-long v4, v3

    int-to-long v6, v2

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/acloud/stub/service/XYPlayerService$MusicCallback;->onProgress(JJ)V

    .line 1221
    :cond_2
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v1, :cond_4

    .line 1222
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    int-to-long v4, v3

    .line 1223
    iget-object v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-eqz v6, :cond_5

    move v6, v0

    :goto_1
    iget-object v7, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicName:Ljava/lang/String;

    .line 1222
    invoke-virtual/range {v1 .. v7}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToProgress(IIJZLjava/lang/String;)V

    .line 1224
    int-to-long v4, v2

    iput-wide v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mTotalTime:J

    .line 1225
    int-to-long v4, v3

    iput-wide v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrectTime:J

    .line 1227
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1228
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getCurPlayIndex()I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    .line 1229
    .local v8, "nCurPlayIndex":I
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getTotalCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 1230
    const/4 v8, 0x0

    .line 1232
    :cond_3
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    .line 1233
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getTotalCount()I

    move-result v9

    int-to-long v10, v3

    move v6, v0

    move-object v12, p0

    .line 1232
    invoke-virtual/range {v5 .. v12}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V

    .line 1237
    .end local v8    # "nCurPlayIndex":I
    :cond_4
    int-to-long v0, v2

    iput-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    move v0, v3

    .line 1238
    goto :goto_0

    .line 1223
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .end local v2    # "duration":I
    :cond_6
    move v0, v1

    .line 1241
    goto :goto_0
.end method

.method private setUpAsForeground(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 851
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/acloud/stub/localmusic/QtActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 852
    const/high16 v4, 0x8000000

    .line 850
    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 853
    .local v0, "pi":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    .line 854
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    iput-object p1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 855
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    const v2, 0x7f02002e

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 858
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 859
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 860
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 859
    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 861
    sget v1, Lcom/acloud/stub/service/XYPlayerService;->NOTIFICTION_ID:I

    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v1, v2}, Lcom/acloud/stub/service/XYPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 862
    return-void
.end method

.method private setVolume(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1459
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1458
    check-cast v0, Landroid/media/AudioManager;

    .line 1460
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1461
    return-void
.end method

.method private updateNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 845
    const-string v2, "MusicPlayer"

    const/4 v3, 0x0

    .line 844
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 846
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/acloud/stub/service/XYPlayerService;->NOTIFICTION_ID:I

    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 847
    return-void
.end method

.method private declared-synchronized widgetControls(Ljava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 689
    monitor-enter p0

    :try_start_0
    const-string v3, "QQ"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action -------------> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCallback --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 690
    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 689
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v3, "xy.cdwidget.initdata"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    const-string v4, ""

    const-string v5, "init"

    invoke-virtual {v3, v4, v5}, Lcom/acloud/stub/db/MusicWidgetManager;->asyncQueryPlayList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 696
    :cond_1
    :try_start_1
    const-string v3, "xy.cdwidget.play"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 698
    const-string v3, "QQ"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Click play button, mCallback --> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-eqz v3, :cond_2

    .line 702
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 703
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "action"

    const-string v4, "play"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback;->widgetToNative(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    .end local v1    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 707
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    sget-object v4, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PLAY:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    if-eq v3, v4, :cond_0

    .line 710
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PLAY:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    iput-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    .line 713
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-nez v3, :cond_4

    .line 714
    iget v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    if-eq v3, v6, :cond_5

    .line 715
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    const-string v4, "service"

    invoke-virtual {v3, v4}, Lcom/acloud/stub/db/MusicWidgetManager;->getCurPlayMusic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "playPath":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 717
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/acloud/stub/service/XYPlayerService;->play(Ljava/lang/String;IIZ)V

    .line 718
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekTimer:Lcom/acloud/AndroidTimer;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/acloud/AndroidTimer;->start(I)V

    .line 719
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    const/16 v4, 0x4e20

    invoke-virtual {v3, v4}, Lcom/acloud/AndroidTimer;->start(I)V

    .line 725
    .end local v2    # "playPath":Ljava/lang/String;
    :cond_3
    :goto_1
    iget v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    if-eq v3, v6, :cond_4

    .line 726
    const/4 v3, 0x3

    iput v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 740
    :cond_4
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/acloud/stub/db/MusicWidgetManager;->setEnable(Z)V

    goto/16 :goto_0

    .line 722
    :cond_5
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->start()V

    .line 723
    const-wide/16 v4, 0x1

    invoke-direct {p0, v4, v5}, Lcom/acloud/stub/service/XYPlayerService;->progressRefresh(J)V

    goto :goto_1

    .line 742
    :cond_6
    const-string v3, "xy.cdwidget.pause"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 744
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-eqz v3, :cond_7

    .line 745
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 746
    .restart local v1    # "json":Lorg/json/JSONObject;
    const-string v3, "action"

    const-string v4, "pause"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback;->widgetToNative(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 749
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_7
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PAUSE:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    iput-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    .line 754
    const-string v3, "QQ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " mWidgetManager.setEnable(false)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/acloud/stub/db/MusicWidgetManager;->setEnable(Z)V

    .line 757
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->pause()V

    .line 758
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getCurrentPosition()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/acloud/stub/db/MusicWidgetManager;->savePlayInfo(I)V

    goto/16 :goto_0

    .line 760
    :cond_8
    const-string v3, "xy.cdwidget.prev"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 761
    const-string v3, "xy.cdwidget.next"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 762
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action: _________"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 765
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-eqz v3, :cond_b

    .line 767
    const-string v0, "prev"

    .line 769
    .local v0, "doAction":Ljava/lang/String;
    const-string v3, "xy.cdwidget.next"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 770
    const-string v0, "next"

    .line 773
    :cond_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 774
    .restart local v1    # "json":Lorg/json/JSONObject;
    const-string v3, "action"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback;->widgetToNative(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 778
    .end local v0    # "doAction":Ljava/lang/String;
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_b
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    sget-object v4, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PREV:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    if-eq v3, v4, :cond_0

    .line 779
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    sget-object v4, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->NEXT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    if-eq v3, v4, :cond_0

    .line 783
    const-string v3, "xy.cdwidget.prev"

    .line 782
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 783
    if-eqz v3, :cond_e

    sget-object v3, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PREV:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    .line 782
    :goto_2
    iput-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    .line 790
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 791
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->stop()V

    .line 794
    :cond_c
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v3, :cond_0

    .line 796
    const-string v3, "xy.cdwidget.prev"

    .line 795
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 796
    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v3}, Lcom/acloud/stub/db/MusicWidgetManager;->selectPre()Ljava/lang/String;

    move-result-object v2

    .line 798
    .restart local v2    # "playPath":Ljava/lang/String;
    :goto_3
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 799
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/acloud/stub/service/XYPlayerService;->play(Ljava/lang/String;IIZ)V

    .line 801
    :cond_d
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/acloud/stub/db/MusicWidgetManager;->setEnable(Z)V

    goto/16 :goto_0

    .line 784
    .end local v2    # "playPath":Ljava/lang/String;
    :cond_e
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->NEXT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    goto :goto_2

    .line 797
    :cond_f
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v3}, Lcom/acloud/stub/db/MusicWidgetManager;->selectNext()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 804
    :cond_10
    const-string v3, "init_widget"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 805
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    const-string v4, "init_widget"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-nez v3, :cond_0

    .line 807
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    const-string v4, ""

    const-string v5, "init"

    invoke-virtual {v3, v4, v5}, Lcom/acloud/stub/db/MusicWidgetManager;->asyncQueryPlayList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :cond_11
    const-string v3, "android.intent.action.startcd"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected clearWidgetCacheData()V
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->clearPlayList()V

    .line 2029
    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1444
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0}, Lcom/acloud/stub/player/XYMediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 1361
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1347
    iget-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1348
    iget-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 1354
    :goto_0
    return-wide v0

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0}, Lcom/acloud/stub/player/XYMediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 1351
    iget-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    goto :goto_0

    .line 1353
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 1354
    iget-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    goto :goto_0
.end method

.method protected getWidgetMsg()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1996
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v3}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/stub/db/PlayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1998
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2000
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->initWave()V

    .line 2004
    :cond_0
    :try_start_0
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mWidgetManager.isHavePlayInfo():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v5}, Lcom/acloud/stub/db/MusicWidgetManager;->isHavePlayInfo()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v3}, Lcom/acloud/stub/db/MusicWidgetManager;->isHavePlayInfo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2006
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2007
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2009
    .local v1, "info":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v3}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v3

    .line 2010
    invoke-virtual {v3}, Lcom/acloud/stub/db/PlayList;->getCurPlayEntry()Lcom/acloud/stub/db/PlayEntry;

    move-result-object v0

    .line 2011
    .local v0, "entry":Lcom/acloud/stub/db/PlayEntry;
    if-eqz v0, :cond_1

    .line 2012
    const-string v3, "path"

    iget-object v4, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2013
    const-string v3, "pisition"

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getCurrentPosition()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2014
    const-string v3, "info"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2015
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2022
    .end local v0    # "entry":Lcom/acloud/stub/db/PlayEntry;
    .end local v1    # "info":Lorg/json/JSONObject;
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 2018
    :catch_0
    move-exception v3

    .line 2022
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->isVtmInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/vov/vitamio/Vitamio;->initialize(Landroid/content/Context;)Z

    .line 871
    :cond_0
    return-void
.end method

.method public initWave()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1824
    const-string v3, "audiovisualizer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "new mVisualizer mCallback:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-static {p0}, Lcom/acloud/VerConfig;->isAc8217(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1826
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-nez v1, :cond_2

    .line 1959
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 1824
    goto :goto_0

    .line 1830
    :cond_2
    sput-boolean v2, Lcom/acloud/stub/service/XYPlayerService;->FFTING:Z

    .line 1835
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v1, :cond_3

    .line 1836
    new-instance v1, Landroid/media/audiofx/Visualizer;

    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v2}, Lcom/acloud/stub/player/XYMediaPlayer;->getAudioSessionId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 1839
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 1842
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    new-instance v2, Lcom/acloud/stub/service/XYPlayerService$16;

    invoke-direct {v2, p0}, Lcom/acloud/stub/service/XYPlayerService$16;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    .line 1928
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1842
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 1931
    :cond_3
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1933
    :catch_0
    move-exception v0

    .line 1934
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/acloud/utils/Logcat;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1938
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-eqz v1, :cond_0

    .line 1940
    :try_start_1
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audiovisualizererror"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1941
    const-string v4, ""

    aput-object v4, v2, v3

    .line 1940
    invoke-interface {v1, v2}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback;->onCallback([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1942
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1945
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    if-eqz v1, :cond_0

    .line 1952
    :try_start_2
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audiovisualizererror"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1953
    const-string v4, ""

    aput-object v4, v2, v3

    .line 1952
    invoke-interface {v1, v2}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback;->onCallback([Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 1954
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method protected isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1542
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1543
    iget v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    if-eq v1, v0, :cond_0

    .line 1542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0}, Lcom/acloud/stub/player/XYMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected nativeToWidget(Ljava/lang/String;)V
    .locals 1
    .param p1, "control"    # Ljava/lang/String;

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/db/MusicWidgetManager;->nativeToWidget(Ljava/lang/String;)V

    .line 1987
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mBindler:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 361
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/acloud/stub/service/XYPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mAudioManager:Landroid/media/AudioManager;

    .line 363
    new-instance v2, Lcom/acloud/stub/service/XYPlayerService$4;

    invoke-direct {v2, p0}, Lcom/acloud/stub/service/XYPlayerService$4;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    iput-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    .line 375
    new-instance v2, Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 376
    iget-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mOnQueryLisenter:Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;

    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    invoke-direct {v2, v3, v4, v5}, Lcom/acloud/stub/db/MusicWidgetManager;-><init>(Landroid/content/Context;Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;)V

    .line 375
    iput-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    .line 382
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 383
    const/4 v2, 0x0

    iput v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 384
    iget v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    sput v2, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    .line 386
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/acloud/stub/service/XYPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 389
    const v2, 0x7f02002e

    sput v2, Lcom/acloud/stub/service/XYPlayerService;->NOTIFICTION_ID:I

    .line 393
    new-instance v2, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;

    invoke-direct {v2, p0}, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    iput-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mLibPlayerRec:Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;

    .line 394
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    .local v1, "playerFilter":Landroid/content/IntentFilter;
    const-string v2, "com.acloud.intent.android.LOWER_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v2, "com.acloud.intent.android.RESTORE_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v2, "com.acloud.intent.android.MAINUI_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v2, "xy.android.acc.on"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v2, "xy.android.acc.off"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v2, "xy.android.lock.screen"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v2, "xy.android.unlock.screen"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v2, "xy.android.avin.come"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v2, "xy.android.avin.leave"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v2, "xy.android.previousmedia"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v2, "xy.android.nextmedia"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v2, "xy.android.playpause"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v2, "xy.android.forceplay"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v2, "xy.android.forcepause"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v2, "xy.android.seek_next"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v2, "xy.android.seek_prev"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v2, "QQ"

    const-string v3, "registerReceiver mLibPlayerRec"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mLibPlayerRec:Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;

    invoke-virtual {p0, v2, v1}, Lcom/acloud/stub/service/XYPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 417
    const/16 v2, -0x14

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    new-instance v2, Lcom/acloud/AndroidTimer;

    new-instance v3, Lcom/acloud/stub/service/XYPlayerService$5;

    invoke-direct {v3, p0}, Lcom/acloud/stub/service/XYPlayerService$5;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    invoke-direct {v2, v3}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;)V

    iput-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekTimer:Lcom/acloud/AndroidTimer;

    .line 432
    new-instance v2, Lcom/acloud/AndroidTimer;

    new-instance v3, Lcom/acloud/stub/service/XYPlayerService$6;

    invoke-direct {v3, p0}, Lcom/acloud/stub/service/XYPlayerService$6;-><init>(Lcom/acloud/stub/service/XYPlayerService;)V

    invoke-direct {v2, v3}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;)V

    iput-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    .line 443
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->initPlayStateControlManager()V

    .line 444
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acloud/utils/Logcat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 1621
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1622
    invoke-static {}, Lcom/acloud/PlayStateControlManager;->removeInstance()V

    .line 1623
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 1628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 1630
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrectTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1632
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMemmoryTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 1634
    :cond_2
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1635
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 1638
    :cond_3
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->removeInstance()V

    .line 1639
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->release()V

    .line 1641
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->unregisterMediaButtonEventReceiver()V

    .line 1643
    const-string v0, "QQ"

    const-string v1, "unregisterReceiver mLibPlayerRec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mLibPlayerRec:Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;

    invoke-virtual {p0, v0}, Lcom/acloud/stub/service/XYPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1647
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/acloud/stub/service/XYPlayerService;->stopForeground(Z)V

    .line 1649
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_4

    .line 1651
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->release()V

    .line 1655
    :cond_4
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->killSelf()V

    .line 1657
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 600
    if-eqz p1, :cond_0

    .line 601
    const-string v6, "method"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "method":Ljava/lang/String;
    const-string v6, "MMM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onStartCommand::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v6, "QQ"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onStartCommand -------------> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    if-eqz v2, :cond_a

    .line 607
    const-string v6, "method_play"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 609
    const-string v6, "path"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, "path":Ljava/lang/String;
    const-string v6, "_id"

    .line 611
    const/4 v7, -0x1

    .line 610
    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 613
    .local v1, "id":I
    const-string v6, "_type"

    .line 612
    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 624
    .local v5, "type":I
    invoke-virtual {p0, v4, v1, v5, v10}, Lcom/acloud/stub/service/XYPlayerService;->play(Ljava/lang/String;IIZ)V

    .line 678
    .end local v1    # "id":I
    .end local v2    # "method":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "type":I
    :cond_0
    :goto_0
    const/4 v6, 0x2

    return v6

    .line 626
    .restart local v2    # "method":Ljava/lang/String;
    :cond_1
    const-string v6, "method_pause"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 627
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->pause()V

    goto :goto_0

    .line 628
    :cond_2
    const-string v6, "method_start"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 629
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->start()V

    goto :goto_0

    .line 630
    :cond_3
    const-string v6, "method_seek"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 631
    const-string v6, "method_param"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 633
    .local v3, "msec":I
    invoke-virtual {p0, v3}, Lcom/acloud/stub/service/XYPlayerService;->seekTo(I)V

    goto :goto_0

    .line 634
    .end local v3    # "msec":I
    :cond_4
    const-string v6, "method_stop"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 635
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->stop()V

    goto :goto_0

    .line 636
    :cond_5
    const-string v6, "method_release"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 637
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->release()V

    .line 638
    invoke-virtual {p0, v10}, Lcom/acloud/stub/service/XYPlayerService;->stopForeground(Z)V

    .line 639
    invoke-virtual {p0, p3}, Lcom/acloud/stub/service/XYPlayerService;->stopSelf(I)V

    goto :goto_0

    .line 640
    :cond_6
    const-string v6, "method_action"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 641
    const-string v6, "method_param"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/acloud/stub/service/XYPlayerService;->setAction(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_7
    const-string v6, "method_init"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 643
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->init()V

    goto :goto_0

    .line 644
    :cond_8
    const-string v6, "method_state"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 647
    iget-wide v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 648
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getDuration()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 665
    :cond_9
    iget-object v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    if-eqz v6, :cond_0

    .line 666
    iget-object v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->getCurrentPosition()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/acloud/stub/service/XYPlayerService$MusicCallback;->onProgress(JJ)V

    goto/16 :goto_0

    .line 671
    :cond_a
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "QQ"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    .line 282
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/acloud/stub/service/XYPlayerService;->NOTIFICTION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 285
    :cond_0
    const-string v0, "QQ"

    const-string v1, "music player unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPlayState(Z)V

    .line 289
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->release()V

    .line 291
    :cond_1
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->DEFAULT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    .line 292
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1316
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0}, Lcom/acloud/stub/player/XYMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    const-string v0, "QQ"

    const-string v1, "-------------------pause---------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0}, Lcom/acloud/stub/player/XYMediaPlayer;->pause()V

    .line 1320
    iput v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1321
    sput v2, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPause()V

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mRemoteControlClientCompat:Lcom/acloud/stub/reciver/RemoteControlClientCompat;

    if-eqz v0, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mRemoteControlClientCompat:Lcom/acloud/stub/reciver/RemoteControlClientCompat;

    .line 1341
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 1343
    :cond_2
    return-void
.end method

.method public declared-synchronized play(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "musicId"    # I
    .param p3, "srcMode"    # I
    .param p4, "useDefault"    # Z

    .prologue
    const/4 v2, 0x1

    .line 884
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-wide/16 v4, 0x1f4

    invoke-direct {p0, v4, v5}, Lcom/acloud/stub/service/XYPlayerService;->progressRefresh(J)V

    .line 888
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayPath(Ljava/lang/String;)V

    .line 890
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->registerMediaButtonEventReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    const/16 v3, 0x2f

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 894
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 893
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/acloud/stub/service/XYPlayerService;->setUpAsForeground(Ljava/lang/String;)V

    .line 900
    iput p3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentPlayRes:I

    .line 901
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 903
    const/4 v3, 0x2

    iput v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentPlayRes:I

    .line 905
    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 909
    :cond_0
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    .line 911
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v3, :cond_1

    .line 912
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v3, p1}, Lcom/acloud/stub/db/MusicWidgetManager;->setHisPlayPath(Ljava/lang/String;)V

    .line 915
    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    iget-object v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicName:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPlay(Ljava/lang/String;ZLjava/lang/String;)V

    .line 919
    :cond_1
    iput p2, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicId:I

    .line 921
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 923
    .local v1, "platLevel":I
    if-eqz p4, :cond_2

    const/4 v2, 0x0

    .line 924
    .local v2, "playerMode":I
    :cond_2
    const-string v3, ".mp3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".ogg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 925
    const-string v3, ".aac"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 926
    :cond_3
    const/4 v2, 0x0

    .line 937
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playerMode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 940
    invoke-direct {p0, p1, v2}, Lcom/acloud/stub/service/XYPlayerService;->playMusic(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 941
    monitor-exit p0

    return-void

    .line 895
    .end local v1    # "platLevel":I
    .end local v2    # "playerMode":I
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, ""

    iput-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 884
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 927
    .restart local v1    # "platLevel":I
    .restart local v2    # "playerMode":I
    :cond_4
    const/16 v3, 0xa

    if-le v1, v3, :cond_5

    :try_start_4
    const-string v3, ".flac"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 928
    const/4 v2, 0x2

    .line 929
    goto :goto_1

    :cond_5
    const-string v3, ".ape"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 930
    const/4 v2, 0x0

    .line 931
    goto :goto_1

    :cond_6
    const-string v3, ".wav"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_7

    .line 932
    const/4 v2, 0x2

    .line 933
    goto :goto_1

    .line 934
    :cond_7
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1504
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 1505
    iput v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1506
    iget v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    sput v1, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    .line 1507
    iput-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    .line 1509
    sget-object v1, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "release()=============== mCurrentState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1510
    const-string v3, ", mPlayerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1509
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    if-eqz v1, :cond_2

    .line 1514
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_1

    .line 1515
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 1518
    :cond_0
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V

    .line 1519
    iput-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 1522
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v1}, Lcom/acloud/stub/player/XYMediaPlayer;->reset()V

    .line 1523
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v1}, Lcom/acloud/stub/player/XYMediaPlayer;->release()V

    .line 1524
    iput-object v5, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    .line 1525
    iput v4, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1529
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotification:Landroid/app/Notification;

    if-eqz v1, :cond_3

    .line 1530
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget v2, Lcom/acloud/stub/service/XYPlayerService;->NOTIFICTION_ID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :cond_3
    :goto_0
    return-void

    .line 1532
    :catch_0
    move-exception v0

    .line 1533
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel err :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public restoreVolume()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1491
    iget-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isLowerVol:Z

    if-eqz v0, :cond_0

    .line 1492
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    const-string v1, "restoreVolume==============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0, v2, v2}, Lcom/acloud/stub/player/XYMediaPlayer;->setVolume(FF)V

    .line 1500
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isLowerVol:Z

    .line 1501
    return-void
.end method

.method public seekTo(I)V
    .locals 5
    .param p1, "msec"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 1365
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seek to ----> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1368
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0, v3, v3}, Lcom/acloud/stub/player/XYMediaPlayer;->setVolume(FF)V

    .line 1369
    iput p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekToPosition:I

    .line 1370
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/player/XYMediaPlayer;->seekTo(I)V

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1374
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1375
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1376
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/acloud/stub/service/XYPlayerService;->progressRefresh(J)V

    .line 1380
    :cond_2
    return-void
.end method

.method public sendPlayInfoToWidget()V
    .locals 4

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2070
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v2

    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPlay(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2073
    :cond_0
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1440
    sput-object p1, Lcom/acloud/stub/service/XYPlayerService;->mAction:Ljava/lang/String;

    .line 1441
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufSize"    # I

    .prologue
    .line 1538
    iput p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mBufferSize:I

    .line 1539
    return-void
.end method

.method protected setCallback(Lcom/acloud/stub/service/aidl/IPlayServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    .prologue
    const/4 v1, 0x0

    .line 1962
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->clearSavePlayInfo()V

    .line 1966
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPlayState(Z)V

    .line 1968
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->release()V

    .line 1969
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/MusicWidgetManager;->setEnable(Z)V

    .line 1970
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->DEFAULT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    .line 1972
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->unregisterMediaButtonEventReceiver()V

    .line 1976
    :cond_0
    if-eqz p1, :cond_1

    .line 1977
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->registerMediaButtonEventReceiver()V

    .line 1980
    :cond_1
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    .line 1981
    return-void
.end method

.method public setMusicCallback(Lcom/acloud/stub/service/XYPlayerService$MusicCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    .prologue
    .line 2080
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    .line 2081
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 1269
    const-string v0, "QQ"

    const-string v1, "-------------------------start--------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isLower:Z

    if-eqz v0, :cond_0

    .line 1278
    invoke-direct {p0}, Lcom/acloud/stub/service/XYPlayerService;->lowerVolume()V

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->isVlcMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1311
    :cond_1
    :goto_0
    return-void

    .line 1287
    :cond_2
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0}, Lcom/acloud/stub/player/XYMediaPlayer;->start()V

    .line 1289
    iput v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1290
    sput v2, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    .line 1301
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicName:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPlay(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public state()I
    .locals 1

    .prologue
    .line 1387
    iget v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    return v0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1391
    iput v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    .line 1392
    iget v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I

    sput v0, Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I

    .line 1393
    iput v2, p0, Lcom/acloud/stub/service/XYPlayerService;->mSeekToPosition:I

    .line 1396
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    if-eqz v0, :cond_2

    .line 1397
    const-string v0, "QQ"

    const-string v1, "-------------------stop---------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->isDefMediaPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    sget-object v0, Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mVisualizer.setEnabled(false)3;"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0}, Lcom/acloud/stub/player/XYMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0, v3, v3}, Lcom/acloud/stub/player/XYMediaPlayer;->setVolume(FF)V

    .line 1406
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    invoke-virtual {v0}, Lcom/acloud/stub/player/XYMediaPlayer;->stop()V

    .line 1411
    :cond_1
    invoke-virtual {p0}, Lcom/acloud/stub/service/XYPlayerService;->release()V

    .line 1412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;

    .line 1414
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mDuration:J

    .line 1416
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mMusicId:I

    .line 1427
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    if-eqz v0, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPause()V

    .line 1433
    :cond_2
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mRemoteControlClientCompat:Lcom/acloud/stub/reciver/RemoteControlClientCompat;

    if-eqz v0, :cond_3

    .line 1434
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mRemoteControlClientCompat:Lcom/acloud/stub/reciver/RemoteControlClientCompat;

    .line 1435
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 1437
    :cond_3
    return-void
.end method

.method public unregisterMediaButtonEventReceiver()V
    .locals 2

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isRegisterMediaButton:Z

    if-eqz v0, :cond_0

    .line 1612
    const-string v0, "MMM"

    .line 1613
    const-string v1, "---------------unregisterMediaButtonEventReceiver------------------"

    .line 1612
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/stub/service/XYPlayerService;->isRegisterMediaButton:Z

    .line 1617
    :cond_0
    return-void
.end method
