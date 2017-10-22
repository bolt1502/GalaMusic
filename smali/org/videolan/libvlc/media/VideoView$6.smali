.class Lorg/videolan/libvlc/media/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/media/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/media/VideoView;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/media/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$6;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lorg/videolan/libvlc/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lorg/videolan/libvlc/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$6;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v0, p2}, Lorg/videolan/libvlc/media/VideoView;->access$21(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 319
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$6;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$22(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$6;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$22(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lorg/videolan/libvlc/media/MediaPlayer;I)V

    .line 321
    :cond_0
    return-void
.end method
