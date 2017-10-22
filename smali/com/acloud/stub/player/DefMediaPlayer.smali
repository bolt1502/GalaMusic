.class public Lcom/acloud/stub/player/DefMediaPlayer;
.super Lcom/acloud/stub/player/XYMediaPlayer;
.source "DefMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefMediaPlayer"

.field private static instance:Lcom/acloud/stub/player/DefMediaPlayer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/acloud/stub/player/DefMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/acloud/stub/player/XYMediaPlayer;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 26
    const-string v0, "DefMediaPlayer"

    const-string v1, "new default MediaPlayer!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 29
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 30
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 31
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 32
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 33
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 34
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/acloud/stub/player/DefMediaPlayer;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/acloud/stub/player/DefMediaPlayer;->instance:Lcom/acloud/stub/player/DefMediaPlayer;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/acloud/stub/player/DefMediaPlayer;

    invoke-direct {v0}, Lcom/acloud/stub/player/DefMediaPlayer;-><init>()V

    sput-object v0, Lcom/acloud/stub/player/DefMediaPlayer;->instance:Lcom/acloud/stub/player/DefMediaPlayer;

    .line 41
    :cond_0
    sget-object v0, Lcom/acloud/stub/player/DefMediaPlayer;->instance:Lcom/acloud/stub/player/DefMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p2}, Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/acloud/stub/player/XYMediaPlayer;I)V

    .line 135
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;->onCompletion(Lcom/acloud/stub/player/XYMediaPlayer;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;->onError(Lcom/acloud/stub/player/XYMediaPlayer;II)Z

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;->onInfo(Lcom/acloud/stub/player/XYMediaPlayer;II)Z

    .line 142
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;->onPrepared(Lcom/acloud/stub/player/XYMediaPlayer;)V

    .line 165
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "-----------pause-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/DefMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 67
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
    .line 71
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 72
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 77
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    const-string v0, "-----------release-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/DefMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 83
    iput-object v1, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 84
    sput-object v1, Lcom/acloud/stub/player/DefMediaPlayer;->instance:Lcom/acloud/stub/player/DefMediaPlayer;

    .line 85
    const-string v0, "DefMediaPlayer"

    const-string v1, "release default media player!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "-----------reset-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/DefMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 92
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 53
    const-string v0, "-----------seekTo-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/DefMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 55
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
    .line 122
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 123
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
    .line 169
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 170
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
    .line 117
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 128
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 174
    const-string v0, "DefMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "leftVolume:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rightVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "-----------start-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/DefMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 49
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "-----------stop-------------"

    invoke-virtual {p0, v0}, Lcom/acloud/stub/player/DefMediaPlayer;->printLogMsg(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/acloud/stub/player/DefMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 61
    return-void
.end method
