.class Lorg/videolan/libvlc/AWindow$1$3;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/AWindow$1;->sendHardwareAccelerationError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/libvlc/AWindow$1;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$1$3;->this$1:Lorg/videolan/libvlc/AWindow$1;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 547
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$1$3;->this$1:Lorg/videolan/libvlc/AWindow$1;

    # getter for: Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v1}, Lorg/videolan/libvlc/AWindow$1;->access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;

    move-result-object v1

    # getter for: Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/videolan/libvlc/AWindow;->access$19(Lorg/videolan/libvlc/AWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    return-void

    .line 547
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/IVLCVout$Callback;

    .line 548
    .local v0, "cb":Lorg/videolan/libvlc/IVLCVout$Callback;
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1$3;->this$1:Lorg/videolan/libvlc/AWindow$1;

    # getter for: Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow$1;->access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/videolan/libvlc/IVLCVout$Callback;->onHardwareAccelerationError(Lorg/videolan/libvlc/IVLCVout;)V

    goto :goto_0
.end method
