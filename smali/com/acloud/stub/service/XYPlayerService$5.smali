.class Lcom/acloud/stub/service/XYPlayerService$5;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/AndroidTimer$TimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/service/XYPlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$5;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$5;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$5;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getSeek()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/service/XYPlayerService;->seekTo(I)V

    .line 428
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$5;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mSeekTimer:Lcom/acloud/AndroidTimer;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$22(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/AndroidTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 429
    return-void
.end method
