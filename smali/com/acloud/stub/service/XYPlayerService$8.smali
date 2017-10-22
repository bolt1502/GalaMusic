.class Lcom/acloud/stub/service/XYPlayerService$8;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/PlayStateControlManager$MountedStateInterface;


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
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$8;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eject(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$8;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$8;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->eject(Ljava/lang/String;)V

    .line 543
    :cond_0
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 536
    return-void
.end method

.method public scanFinish()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$8;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$8;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->scanFinish()V

    .line 557
    :cond_0
    return-void
.end method

.method public scanStart()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$8;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$8;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->scanStart()V

    .line 550
    :cond_0
    return-void
.end method
