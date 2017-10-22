.class public Lorg/videolan/libvlc/media/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8

.field public static final VIDEO_LAYOUT_ORIGIN:I = 0x0

.field public static final VIDEO_LAYOUT_SCALE:I = 0x1

.field public static final VIDEO_LAYOUT_STRETCH:I = 0x2

.field public static final VIDEO_LAYOUT_ZOOM:I = 0x3

.field private static sLibVLC:Lorg/videolan/libvlc/LibVLC;


# instance fields
.field private mAspectRatio:F

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaBufferingIndicator:Landroid/view/View;

.field private mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

.field private mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoAspectRatio:F

.field private mVideoHeight:I

.field private mVideoLayout:I

.field mVideoSizeChangedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mVideoWidth:I

.field private onBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

.field private onCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

.field private onErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

.field private onInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

.field onPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

.field private onSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

.field private onTimedTextListener:Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 83
    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 84
    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mAspectRatio:F

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoLayout:I

    .line 87
    iput-object v1, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 88
    iput-object v1, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 139
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$1;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoSizeChangedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 150
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$2;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    .line 183
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$3;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$3;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 290
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$4;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$4;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    .line 300
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$5;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$5;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    .line 314
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$6;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$6;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    .line 324
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$7;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$7;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    .line 345
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$8;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$8;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    .line 354
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$9;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$9;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onTimedTextListener:Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

    .line 365
    invoke-direct {p0}, Lorg/videolan/libvlc/media/VideoView;->initLibVLC()V

    .line 366
    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/media/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/videolan/libvlc/media/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 371
    invoke-direct {p0}, Lorg/videolan/libvlc/media/VideoView;->initLibVLC()V

    .line 372
    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/media/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 376
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 84
    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mAspectRatio:F

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoLayout:I

    .line 87
    iput-object v1, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 88
    iput-object v1, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 139
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$1;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoSizeChangedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 150
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$2;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    .line 183
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$3;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$3;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 290
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$4;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$4;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    .line 300
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$5;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$5;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    .line 314
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$6;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$6;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    .line 324
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$7;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$7;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    .line 345
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$8;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$8;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    .line 354
    new-instance v0, Lorg/videolan/libvlc/media/VideoView$9;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/media/VideoView$9;-><init>(Lorg/videolan/libvlc/media/VideoView;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->onTimedTextListener:Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

    .line 377
    invoke-direct {p0}, Lorg/videolan/libvlc/media/VideoView;->initLibVLC()V

    .line 378
    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/media/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 379
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/libvlc/media/VideoView;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I

    return-void
.end method

.method static synthetic access$1(Lorg/videolan/libvlc/media/VideoView;I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$10(Lorg/videolan/libvlc/media/VideoView;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$11(Lorg/videolan/libvlc/media/VideoView;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$12(Lorg/videolan/libvlc/media/VideoView;I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceWidth:I

    return-void
.end method

.method static synthetic access$13(Lorg/videolan/libvlc/media/VideoView;I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    return-void
.end method

.method static synthetic access$14(Lorg/videolan/libvlc/media/VideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic access$15(Lorg/videolan/libvlc/media/VideoView;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$16(Lorg/videolan/libvlc/media/VideoView;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$17(Lorg/videolan/libvlc/media/VideoView;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/videolan/libvlc/media/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$18(Lorg/videolan/libvlc/media/VideoView;Z)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/media/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$19(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/libvlc/media/VideoView;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$20(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$21(Lorg/videolan/libvlc/media/VideoView;I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$22(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$23(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$24(Lorg/videolan/libvlc/media/VideoView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaBufferingIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$25(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mOnSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$26(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mOnTimedTextListener:Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/libvlc/media/VideoView;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$4(Lorg/videolan/libvlc/media/VideoView;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$5(Lorg/videolan/libvlc/media/VideoView;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$6(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$8(Lorg/videolan/libvlc/media/VideoView;)I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$9(Lorg/videolan/libvlc/media/VideoView;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method private initLibVLC()V
    .locals 2

    .prologue
    .line 398
    :try_start_0
    new-instance v1, Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v1}, Lorg/videolan/libvlc/LibVLC;-><init>()V

    sput-object v1, Lorg/videolan/libvlc/media/VideoView;->sLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/excption/VlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Lorg/videolan/libvlc/excption/VlcException;
    invoke-virtual {v0}, Lorg/videolan/libvlc/excption/VlcException;->printStackTrace()V

    goto :goto_0
.end method

.method private openVideo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 241
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "==============mUri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mSurfaceHolder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, v7}, Lorg/videolan/libvlc/media/VideoView;->release(Z)V

    .line 255
    const/4 v2, -0x1

    :try_start_0
    iput v2, p0, Lorg/videolan/libvlc/media/VideoView;->mDuration:I

    .line 256
    const/4 v2, 0x0

    iput v2, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentBufferPercentage:I

    .line 257
    new-instance v2, Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-direct {v2}, Lorg/videolan/libvlc/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 258
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->onPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnPreparedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;)V

    .line 259
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoSizeChangedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnVideoSizeChangedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 260
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->onCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnCompletionListener(Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;)V

    .line 261
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->onErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnErrorListener(Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;)V

    .line 262
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->onBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnBufferingUpdateListener(Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 263
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->onInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnInfoListener(Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;)V

    .line 264
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->onSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnSeekCompleteListener(Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 265
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->onTimedTextListener:Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnTimedTextListener(Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;)V

    .line 266
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/videolan/libvlc/media/VideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lorg/videolan/libvlc/media/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 267
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 268
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setAudioStreamType(I)V

    .line 269
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 270
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v2}, Lorg/videolan/libvlc/media/MediaPlayer;->prepareAsync()V

    .line 273
    const/4 v2, 0x1

    iput v2, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 277
    iput v6, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 278
    iput v6, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 279
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->onErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;->onError(Lorg/videolan/libvlc/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 281
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 283
    iput v6, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 284
    iput v6, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 285
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView;->onErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;->onError(Lorg/videolan/libvlc/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->reset()V

    .line 231
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->release()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 233
    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 234
    if-eqz p1, :cond_0

    .line 235
    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 458
    return-void
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 631
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 632
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 589
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentBufferPercentage:I

    .line 590
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 554
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mDuration:I

    .line 559
    :goto_0
    return v0

    .line 555
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mDuration:I

    .line 556
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mDuration:I

    goto :goto_0

    .line 558
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mDuration:I

    .line 559
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I

    return v0
.end method

.method public initVideoView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mContext:Landroid/content/Context;

    .line 383
    iput v2, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I

    .line 384
    iput v2, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I

    .line 385
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 386
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 387
    invoke-virtual {p0, v3}, Lorg/videolan/libvlc/media/VideoView;->setFocusable(Z)V

    .line 388
    invoke-virtual {p0, v3}, Lorg/videolan/libvlc/media/VideoView;->setFocusableInTouchMode(Z)V

    .line 389
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->requestFocus()Z

    .line 390
    iput v2, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 391
    iput v2, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 392
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 393
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 394
    :cond_0
    return-void
.end method

.method protected isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 647
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 621
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 622
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 626
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 627
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 492
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 636
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 637
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 641
    iget v2, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lorg/videolan/libvlc/media/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 642
    .local v1, "width":I
    iget v2, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lorg/videolan/libvlc/media/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 643
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lorg/videolan/libvlc/media/VideoView;->setMeasuredDimension(II)V

    .line 644
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 482
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 515
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->pause()V

    .line 518
    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 521
    :cond_0
    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 522
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 417
    move v0, p1

    .line 418
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 419
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 421
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 434
    :goto_0
    return v0

    .line 423
    :sswitch_0
    move v0, p1

    .line 424
    goto :goto_0

    .line 427
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 428
    goto :goto_0

    .line 431
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 421
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 544
    const/4 v0, 0x7

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 546
    invoke-direct {p0}, Lorg/videolan/libvlc/media/VideoView;->openVideo()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 571
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->seekTo(I)V

    .line 575
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSeekWhenPrepared:I

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_1
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaBufferingIndicator(Landroid/view/View;)V
    .locals 2
    .param p1, "mediaBufferingIndicator"    # Landroid/view/View;

    .prologue
    .line 496
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaBufferingIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaBufferingIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 498
    :cond_0
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaBufferingIndicator:Landroid/view/View;

    .line 499
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 461
    return-void
.end method

.method public setOnCompletionListener(Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 468
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    .line 469
    return-void
.end method

.method public setOnErrorListener(Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 472
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    .line 473
    return-void
.end method

.method public setOnInfoListener(Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 477
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    .line 478
    return-void
.end method

.method public setOnPreparedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 464
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    .line 465
    return-void
.end method

.method public setVideoHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mHeaders:Ljava/util/Map;

    .line 503
    return-void
.end method

.method public setVideoLayout(IF)V
    .locals 10
    .param p1, "layout"    # I
    .param p2, "aspectRatio"    # F

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 115
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lorg/videolan/libvlc/media/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 116
    .local v0, "disp":Landroid/util/DisplayMetrics;
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v6, "windowWidth":I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    .local v4, "windowHeight":I
    int-to-float v7, v6

    int-to-float v8, v4

    div-float v5, v7, v8

    .line 118
    .local v5, "windowRatio":F
    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_0

    iget v3, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoAspectRatio:F

    .line 119
    .local v3, "videoRatio":F
    :goto_0
    iget v7, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I

    iput v7, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    .line 120
    iget v7, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I

    iput v7, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceWidth:I

    .line 121
    if-nez p1, :cond_1

    iget v7, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceWidth:I

    if-ge v7, v6, :cond_1

    iget v7, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    if-ge v7, v4, :cond_1

    .line 122
    iget v7, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    iget v7, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    .end local v4    # "windowHeight":I
    :goto_1
    invoke-virtual {p0, v2}, Lorg/videolan/libvlc/media/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    iget v8, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceWidth:I

    iget v9, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    invoke-interface {v7, v8, v9}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 135
    iput p1, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoLayout:I

    .line 136
    iput p2, p0, Lorg/videolan/libvlc/media/VideoView;->mAspectRatio:F

    .line 137
    return-void

    .end local v3    # "videoRatio":F
    .restart local v4    # "windowHeight":I
    :cond_0
    move v3, p2

    .line 118
    goto :goto_0

    .line 124
    .restart local v3    # "videoRatio":F
    :cond_1
    const/4 v7, 0x3

    if-ne p1, v7, :cond_4

    .line 125
    cmpl-float v7, v5, v3

    if-lez v7, :cond_2

    move v7, v6

    :goto_2
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    cmpg-float v7, v5, v3

    if-gez v7, :cond_3

    .end local v4    # "windowHeight":I
    :goto_3
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 125
    .restart local v4    # "windowHeight":I
    :cond_2
    int-to-float v7, v4

    mul-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_2

    .line 126
    :cond_3
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v4, v7

    goto :goto_3

    .line 128
    :cond_4
    const/4 v7, 0x2

    if-ne p1, v7, :cond_7

    const/4 v1, 0x1

    .line 129
    .local v1, "full":Z
    :goto_4
    if-nez v1, :cond_5

    cmpg-float v7, v5, v3

    if-gez v7, :cond_8

    :cond_5
    move v7, v6

    :goto_5
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    if-nez v1, :cond_6

    cmpl-float v7, v5, v3

    if-lez v7, :cond_9

    .end local v4    # "windowHeight":I
    :cond_6
    :goto_6
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 128
    .end local v1    # "full":Z
    .restart local v4    # "windowHeight":I
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 129
    .restart local v1    # "full":Z
    :cond_8
    int-to-float v7, v4

    mul-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_5

    .line 130
    :cond_9
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v4, v7

    goto :goto_6
.end method

.method public setVideoLayout(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 656
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 657
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I

    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    .line 658
    iget v1, p0, Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I

    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceWidth:I

    .line 660
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 661
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 662
    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/media/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceWidth:I

    iget v3, p0, Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 664
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 438
    if-eqz p1, :cond_0

    .line 439
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/media/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 441
    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 444
    new-instance v0, Lorg/videolan/libvlc/Media;

    sget-object v1, Lorg/videolan/libvlc/media/VideoView;->sLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    .line 445
    .local v0, "media":Lorg/videolan/libvlc/Media;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/videolan/libvlc/media/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 446
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView;->mUri:Landroid/net/Uri;

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mSeekWhenPrepared:I

    .line 451
    invoke-direct {p0}, Lorg/videolan/libvlc/media/VideoView;->openVideo()V

    .line 452
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->requestLayout()V

    .line 453
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->invalidate()V

    .line 454
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 506
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->start()V

    .line 508
    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 510
    :cond_0
    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 511
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->stop()V

    .line 527
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->release()V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 529
    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 530
    iput v1, p0, Lorg/videolan/libvlc/media/VideoView;->mTargetState:I

    .line 532
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/media/VideoView;->release(Z)V

    .line 538
    const/16 v0, 0x8

    iput v0, p0, Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I

    .line 540
    :cond_0
    return-void
.end method
