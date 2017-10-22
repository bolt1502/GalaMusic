.class Lorg/videolan/libvlc/media/VideoView$9;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;


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
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$9;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimedText(Lorg/videolan/libvlc/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 1
    .param p1, "mp"    # Lorg/videolan/libvlc/media/MediaPlayer;
    .param p2, "text"    # Landroid/media/TimedText;

    .prologue
    .line 357
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$9;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnTimedTextListener:Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$26(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$9;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnTimedTextListener:Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$26(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;->onTimedText(Lorg/videolan/libvlc/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 360
    :cond_0
    return-void
.end method
