.class Lcom/acloud/stub/ui/view/VerticalSeekBar$2;
.super Ljava/lang/Object;
.source "VerticalSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$2;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 108
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$2;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$2;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->height:I
    invoke-static {v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$2(Lcom/acloud/stub/ui/view/VerticalSeekBar;)I

    move-result v1

    iget-object v2, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$2;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    # getter for: Lcom/acloud/stub/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$1(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-double v2, v1

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$2;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getProgress()I

    move-result v1

    int-to-double v4, v1

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar$2;->this$0:Lcom/acloud/stub/ui/view/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getMax()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->access$3(Lcom/acloud/stub/ui/view/VerticalSeekBar;D)V

    .line 109
    return-void
.end method
