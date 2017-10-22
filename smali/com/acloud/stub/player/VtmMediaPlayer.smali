.class public Lcom/acloud/stub/player/VtmMediaPlayer;
.super Lcom/acloud/stub/player/XYMediaPlayer;
.source "VtmMediaPlayer.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
.implements Lio/vov/vitamio/MediaPlayer$OnInfoListener;
.implements Lio/vov/vitamio/MediaPlayer$OnErrorListener;
.implements Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
.implements Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VtmMediaPlayer"

.field private static instance:Lcom/acloud/stub/player/VtmMediaPlayer;


# instance fields
.field private mInited:Z

.field private mMediaPlayer:Lio/vov/vitamio/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/acloud/stub/player/XYMediaPlayer;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 29
    const-string v0, "VtmMediaPlayer"

    const-string v1, "init vitamio media player----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lio/vov/vitamio/MediaPlayer;

    invoke-direct {v0, p1}, Lio/vov/vitamio/MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 36
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p0}, Lio/vov/vitamio/MediaPlayer;->setOnBufferingUpdateListener(Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;)V

    .line 37
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p0}, Lio/vov/vitamio/MediaPlayer;->setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V

    .line 38
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p0}, Lio/vov/vitamio/MediaPlayer;->setOnErrorListener(Lio/vov/vitamio/MediaPlayer$OnErrorListener;)V

    .line 39
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p0}, Lio/vov/vitamio/MediaPlayer;->setOnInfoListener(Lio/vov/vitamio/MediaPlayer$OnInfoListener;)V

    .line 40
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p0}, Lio/vov/vitamio/MediaPlayer;->setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V

    .line 41
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->releaseDisplay()V

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/acloud/stub/player/VtmMediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/acloud/stub/player/VtmMediaPlayer;->instance:Lcom/acloud/stub/player/VtmMediaPlayer;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/acloud/stub/player/VtmMediaPlayer;

    invoke-direct {v0, p0}, Lcom/acloud/stub/player/VtmMediaPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/acloud/stub/player/VtmMediaPlayer;->instance:Lcom/acloud/stub/player/VtmMediaPlayer;

    .line 25
    :cond_0
    sget-object v0, Lcom/acloud/stub/player/VtmMediaPlayer;->instance:Lcom/acloud/stub/player/VtmMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getAudioTrack()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onBufferingUpdate(Lio/vov/vitamio/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p2}, Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/acloud/stub/player/XYMediaPlayer;I)V

    .line 133
    :cond_0
    return-void
.end method

.method public onCompletion(Lio/vov/vitamio/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;->onCompletion(Lcom/acloud/stub/player/XYMediaPlayer;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onError(Lio/vov/vitamio/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;->onError(Lcom/acloud/stub/player/XYMediaPlayer;II)Z

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Lio/vov/vitamio/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;->onInfo(Lcom/acloud/stub/player/XYMediaPlayer;II)Z

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Lio/vov/vitamio/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;->onPrepared(Lcom/acloud/stub/player/XYMediaPlayer;)V

    .line 163
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "-----------pause-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/VtmMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 66
    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->prepare()V

    .line 71
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->prepareAsync()V

    .line 76
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    const-string v0, "-----------release-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/VtmMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 82
    iput-object v1, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 83
    sput-object v1, Lcom/acloud/stub/player/VtmMediaPlayer;->instance:Lcom/acloud/stub/player/VtmMediaPlayer;

    .line 84
    const-string v0, "VtmMediaPlayer"

    const-string v1, "release vtm media player!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "-----------reset-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/VtmMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->reset()V

    .line 91
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    .line 52
    const-string v0, "-----------seekTo-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/VtmMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lio/vov/vitamio/MediaPlayer;->seekTo(J)V

    .line 54
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lio/vov/vitamio/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 122
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 168
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "looping"    # Z

    .prologue
    .line 126
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 172
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lio/vov/vitamio/MediaPlayer;->setVolume(FF)V

    .line 173
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "-----------reset-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/VtmMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 48
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "-----------stop-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/VtmMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/acloud/stub/player/VtmMediaPlayer;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->stop()V

    .line 60
    return-void
.end method
