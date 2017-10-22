.class public Lcom/acloud/stub/player/VlcMediaPlayer;
.super Lcom/acloud/stub/player/XYMediaPlayer;
.source "VlcMediaPlayer.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;


# static fields
.field private static instance:Lcom/acloud/stub/player/VlcMediaPlayer;


# instance fields
.field private mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/acloud/stub/player/XYMediaPlayer;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 34
    new-instance v0, Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-direct {v0}, Lorg/videolan/libvlc/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 35
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnBufferingUpdateListener(Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 36
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnCompletionListener(Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;)V

    .line 37
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnErrorListener(Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;)V

    .line 38
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnInfoListener(Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;)V

    .line 39
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/libvlc/media/MediaPlayer;->setOnPreparedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;)V

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/acloud/stub/player/VlcMediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/acloud/stub/player/VlcMediaPlayer;->instance:Lcom/acloud/stub/player/VlcMediaPlayer;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/acloud/stub/player/VlcMediaPlayer;

    invoke-direct {v0, p0}, Lcom/acloud/stub/player/VlcMediaPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/acloud/stub/player/VlcMediaPlayer;->instance:Lcom/acloud/stub/player/VlcMediaPlayer;

    .line 30
    :cond_0
    sget-object v0, Lcom/acloud/stub/player/VlcMediaPlayer;->instance:Lcom/acloud/stub/player/VlcMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onBufferingUpdate(Lorg/videolan/libvlc/media/MediaPlayer;I)V
    .locals 1
    .param p1, "arg0"    # Lorg/videolan/libvlc/media/MediaPlayer;
    .param p2, "arg1"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p2}, Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/acloud/stub/player/XYMediaPlayer;I)V

    .line 165
    :cond_0
    return-void
.end method

.method public onCompletion(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Lorg/videolan/libvlc/media/MediaPlayer;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;->onCompletion(Lcom/acloud/stub/player/XYMediaPlayer;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onError(Lorg/videolan/libvlc/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "arg0"    # Lorg/videolan/libvlc/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;->onError(Lcom/acloud/stub/player/XYMediaPlayer;II)Z

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Lorg/videolan/libvlc/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "arg0"    # Lorg/videolan/libvlc/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;->onInfo(Lcom/acloud/stub/player/XYMediaPlayer;II)Z

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Lorg/videolan/libvlc/media/MediaPlayer;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;->onPrepared(Lcom/acloud/stub/player/XYMediaPlayer;)V

    .line 195
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->pause()V

    .line 67
    const-string v0, "pause"

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 68
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
    .line 72
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->prepare()V

    .line 74
    const-string v0, "prepare"

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->prepareAsync()V

    .line 81
    const-string v0, "prepareAsync"

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->release()V

    .line 87
    iput-object v1, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 88
    sput-object v1, Lcom/acloud/stub/player/VlcMediaPlayer;->instance:Lcom/acloud/stub/player/VlcMediaPlayer;

    .line 90
    const-string v0, "release"

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->reset()V

    .line 97
    const-string v0, "reset"

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "msec"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->seekTo(I)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seekTo msec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setLooping(Z)V
    .locals 2
    .param p1, "looping"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->setLooping(Z)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "looping:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setVolume(FF)V
    .locals 2
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 143
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/media/MediaPlayer;->setVolume(FF)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "leftVolume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rightVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->start()V

    .line 46
    const-string v0, "start"

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/acloud/stub/player/VlcMediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->stop()V

    .line 60
    const-string v0, "stop"

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 61
    return-void
.end method
