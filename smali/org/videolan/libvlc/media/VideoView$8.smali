.class Lorg/videolan/libvlc/media/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;


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
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$8;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Lorg/videolan/libvlc/media/MediaPlayer;

    .prologue
    .line 349
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$8;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$25(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$8;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$25(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lorg/videolan/libvlc/media/MediaPlayer;)V

    .line 351
    :cond_0
    return-void
.end method
