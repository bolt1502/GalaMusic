.class Lcom/acloud/stub/localmusic/QtActivity$1;
.super Lcom/acloud/stub/service/aidl/IPlayServiceCallback$Stub;
.source "QtActivity.java"


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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$1;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 178
    invoke-direct {p0}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    return-void
.end method

.method public widgetToNative(Ljava/lang/String;)V
    .locals 5
    .param p1, "control"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "controlJson":Lorg/json/JSONObject;
    const-string v3, "action"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "action":Ljava/lang/String;
    const-string v3, "play"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$1;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v4, 0x0

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V
    invoke-static {v3, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$0(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 205
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "controlJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "controlJson":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "pause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$1;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v4, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V
    invoke-static {v3, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$0(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "controlJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "controlJson":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v3, "prev"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$1;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$1(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 197
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$1;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->onPreMusic()V
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$2(Lcom/acloud/stub/localmusic/QtActivity;)V

    goto :goto_0

    .line 198
    :cond_3
    const-string v3, "next"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$1;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$1(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 200
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$1;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->onNextMusic()V
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$3(Lcom/acloud/stub/localmusic/QtActivity;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
