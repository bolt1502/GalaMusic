.class Lcom/acloud/stub/ui/view/VerticalSeekBar$1;
.super Ljava/lang/Object;
.source "VerticalSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/ui/view/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;


# direct methods
.method constructor <init>(Lcom/acloud/stub/ui/view/VerticalSeekBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$1(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->height:I
    invoke-static {v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$2(Lcom/acloud/stub/ui/view/VerticalSeekBar;)I

    move-result v1

    iget-object v2, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$1(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-double v2, v1

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getProgress()I

    move-result v1

    int-to-double v4, v1

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getMax()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$3(Lcom/acloud/stub/ui/view/VerticalSeekBar;D)V

    .line 69
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->invalidate()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    invoke-static {v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$0(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    invoke-static {v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$0(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-interface {v0, v1, p2, p3}, Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;->onProgressChanged(Lcom/acloud/stub/ui/view/VerticalSeekBar;IZ)V

    .line 74
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    invoke-static {v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$0(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    invoke-static {v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$0(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-interface {v0, v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;->onStartTrackingTouch(Lcom/acloud/stub/ui/view/VerticalSeekBar;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    invoke-static {v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$0(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    invoke-static {v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$0(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-interface {v0, v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;->onStopTrackingTouch(Lcom/acloud/stub/ui/view/VerticalSeekBar;)V

    .line 55
    :cond_0
    return-void
.end method
