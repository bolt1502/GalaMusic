.class Lcom/acloud/stub/service/XYPlayerService$9;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/PlayStateControlManager$VoiceControlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/service/XYPlayerService;->initPlayStateControlManager()V
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
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextPage()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->nextPage()V

    .line 594
    :cond_0
    return-void
.end method

.method public onContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->onContent(Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method

.method public prePage()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->prePage()V

    .line 580
    :cond_0
    return-void
.end method

.method public sureOrCancel(Z)V
    .locals 0
    .param p1, "isSure"    # Z

    .prologue
    .line 573
    return-void
.end method

.method public switchFirst(I)V
    .locals 1
    .param p1, "nFew"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$9;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->switchFirst(I)V

    .line 568
    :cond_0
    return-void
.end method
