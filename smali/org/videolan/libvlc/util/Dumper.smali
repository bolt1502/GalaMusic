.class public Lorg/videolan/libvlc/util/Dumper;
.super Ljava/lang/Object;
.source "Dumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/Dumper$Listener;
    }
.end annotation


# instance fields
.field private mLibVLC:Lorg/videolan/libvlc/LibVLC;

.field private final mListener:Lorg/videolan/libvlc/util/Dumper$Listener;

.field private mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lorg/videolan/libvlc/util/Dumper$Listener;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/videolan/libvlc/util/Dumper$Listener;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 50
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "arguments shouldn\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_1
    iput-object p3, p0, Lorg/videolan/libvlc/util/Dumper;->mListener:Lorg/videolan/libvlc/util/Dumper$Listener;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "--demux"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v3, "dump2,none"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v3, "--demuxdump-file"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v3, "--no-video"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v3, "--no-audio"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v3, "--no-spu"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v3, "-vvv"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :try_start_0
    new-instance v3, Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v3, v2}, Lorg/videolan/libvlc/LibVLC;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, p0, Lorg/videolan/libvlc/util/Dumper;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/excption/VlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    new-instance v1, Lorg/videolan/libvlc/Media;

    iget-object v3, p0, Lorg/videolan/libvlc/util/Dumper;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v1, v3, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    .line 70
    .local v1, "media":Lorg/videolan/libvlc/Media;
    new-instance v3, Lorg/videolan/libvlc/MediaPlayer;

    invoke-direct {v3, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/Media;)V

    iput-object v3, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 71
    iget-object v3, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    new-instance v4, Lorg/videolan/libvlc/util/Dumper$1;

    invoke-direct {v4, p0}, Lorg/videolan/libvlc/util/Dumper$1;-><init>(Lorg/videolan/libvlc/util/Dumper;)V

    invoke-virtual {v3, v4}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    .line 87
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->release()V

    .line 88
    .end local v1    # "media":Lorg/videolan/libvlc/Media;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/videolan/libvlc/excption/VlcException;
    invoke-virtual {v0}, Lorg/videolan/libvlc/excption/VlcException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/videolan/libvlc/util/Dumper;)Lorg/videolan/libvlc/util/Dumper$Listener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mListener:Lorg/videolan/libvlc/util/Dumper$Listener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 103
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 104
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->release()V

    .line 105
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 95
    return-void
.end method
