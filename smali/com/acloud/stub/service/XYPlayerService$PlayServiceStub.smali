.class public Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
.super Lcom/acloud/stub/service/aidl/IPlayService$Stub;
.source "XYPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/service/XYPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayServiceStub"
.end annotation


# instance fields
.field private mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/acloud/stub/service/XYPlayerService;",
            ">;"
        }
    .end annotation
.end field

.field pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 1
    .param p1, "service"    # Lcom/acloud/stub/service/XYPlayerService;

    .prologue
    .line 2104
    invoke-direct {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;-><init>()V

    .line 2102
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->pool:Ljava/util/concurrent/ExecutorService;

    .line 2105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 2106
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->state()I

    move-result v0

    return v0
.end method

.method public getWidgetMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->getWidgetMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->init()V

    .line 2121
    return-void
.end method

.method public nativeToWidget(Ljava/lang/String;)V
    .locals 1
    .param p1, "control"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/service/XYPlayerService;->nativeToWidget(Ljava/lang/String;)V

    .line 2179
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->onDestroy()V

    .line 2203
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->pause()V

    .line 2143
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "musicId"    # I
    .param p3, "resMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/acloud/stub/service/XYPlayerService;->play(Ljava/lang/String;IIZ)V

    .line 2132
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->clearWidgetCacheData()V

    .line 2133
    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->release()V

    .line 2174
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/service/XYPlayerService;->seekTo(I)V

    .line 2163
    return-void
.end method

.method public sendPlayToWidget()V
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->sendPlayInfoToWidget()V

    .line 2193
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/service/XYPlayerService;->setAction(Ljava/lang/String;)V

    .line 2126
    return-void
.end method

.method public setActivityCallBack(Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->setActivityCallBack(Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;)V
    invoke-static {v0, p1}, Lcom/acloud/stub/service/XYPlayerService;->access$21(Lcom/acloud/stub/service/XYPlayerService;Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;)V

    .line 2116
    return-void
.end method

.method public setCallback(Lcom/acloud/stub/service/aidl/IPlayServiceCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/service/XYPlayerService;->setCallback(Lcom/acloud/stub/service/aidl/IPlayServiceCallback;)V

    .line 2112
    return-void
.end method

.method public setMusicCallback(Lcom/acloud/stub/service/XYPlayerService$MusicCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/service/XYPlayerService;->setMusicCallback(Lcom/acloud/stub/service/XYPlayerService$MusicCallback;)V

    .line 2197
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->start()V

    .line 2138
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2167
    const-string v0, "========stop()====RemoteException===="

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 2168
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->stop()V

    .line 2169
    return-void
.end method

.method public stopSelf()V
    .locals 1

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->killSelf()V
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$11(Lcom/acloud/stub/service/XYPlayerService;)V

    .line 2200
    return-void
.end method

.method public unRegiestMediaButton()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->unregisterMediaButtonEventReceiver()V

    .line 2189
    return-void
.end method
