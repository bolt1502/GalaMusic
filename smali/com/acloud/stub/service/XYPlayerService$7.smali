.class Lcom/acloud/stub/service/XYPlayerService$7;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/PlayStateControlManager$PlayStateInterface;


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
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->next()V

    .line 493
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public onPlay()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->pause()V

    .line 486
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->play()V

    .line 479
    :cond_0
    return-void
.end method

.method public playAndPause()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->playAndPause()V

    .line 472
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->prev()V

    .line 465
    :cond_0
    return-void
.end method

.method public quitApp()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->quitApp()V

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->stop()V

    .line 515
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->stopSelf()V

    goto :goto_0
.end method

.method public steeringWheelPause()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->steeringWheelPause()V

    .line 507
    :cond_0
    return-void
.end method

.method public steeringWheelPlay()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->steeringWheelPlay()V

    .line 500
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$7;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->stop()V

    .line 458
    :cond_0
    return-void
.end method
