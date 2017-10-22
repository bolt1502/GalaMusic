.class Lorg/videolan/libvlc/AWindow$1$2;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/AWindow$1;->setWindowLayout(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/libvlc/AWindow$1;

.field private final synthetic val$height:I

.field private final synthetic val$sarDen:I

.field private final synthetic val$sarNum:I

.field private final synthetic val$visibleHeight:I

.field private final synthetic val$visibleWidth:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/AWindow$1;IIIIII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$1$2;->this$1:Lorg/videolan/libvlc/AWindow$1;

    iput p2, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$width:I

    iput p3, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$height:I

    iput p4, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$visibleWidth:I

    iput p5, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$visibleHeight:I

    iput p6, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$sarNum:I

    iput p7, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$sarDen:I

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 536
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$1$2;->this$1:Lorg/videolan/libvlc/AWindow$1;

    # getter for: Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v1}, Lorg/videolan/libvlc/AWindow$1;->access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;

    move-result-object v1

    # getter for: Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/videolan/libvlc/AWindow;->access$19(Lorg/videolan/libvlc/AWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    return-void

    .line 536
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/IVLCVout$Callback;

    .line 537
    .local v0, "cb":Lorg/videolan/libvlc/IVLCVout$Callback;
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$1$2;->this$1:Lorg/videolan/libvlc/AWindow$1;

    # getter for: Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v1}, Lorg/videolan/libvlc/AWindow$1;->access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;

    move-result-object v1

    iget v2, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$width:I

    iget v3, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$height:I

    iget v4, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$visibleWidth:I

    iget v5, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$visibleHeight:I

    iget v6, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$sarNum:I

    iget v7, p0, Lorg/videolan/libvlc/AWindow$1$2;->val$sarDen:I

    invoke-interface/range {v0 .. v7}, Lorg/videolan/libvlc/IVLCVout$Callback;->onNewLayout(Lorg/videolan/libvlc/IVLCVout;IIIIII)V

    goto :goto_0
.end method
