.class Lcom/acloud/stub/localmusic/QtActivity$3;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/QtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/localmusic/QtActivity;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1666
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {p2}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/acloud/stub/service/aidl/IPlayService;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    invoke-static {v1, v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$8(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;)V

    .line 1669
    :try_start_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPlayServiceCallball:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$10(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->setCallback(Lcom/acloud/stub/service/aidl/IPlayServiceCallback;)V

    .line 1670
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mAction:Ljava/lang/String;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$11(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$11(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->setAction(Ljava/lang/String;)V

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$12(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->setMusicCallback(Lcom/acloud/stub/service/XYPlayerService$MusicCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    :goto_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$13(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->setActivityCallBack(Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;)V

    .line 1678
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->initMusicInfoData()V
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$14(Lcom/acloud/stub/localmusic/QtActivity;)V

    .line 1679
    return-void

    .line 1675
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$3;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$8(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;)V

    .line 1662
    return-void
.end method
