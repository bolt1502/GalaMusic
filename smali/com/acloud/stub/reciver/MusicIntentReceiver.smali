.class public Lcom/acloud/stub/reciver/MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicIntentReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 46
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 52
    .local v0, "content":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "media_button"

    aput-object v3, v0, v2

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xy.android.previousmedia"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string v2, "88"

    aput-object v2, v0, v4

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xy.android.nextmedia"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const-string v2, "87"

    aput-object v2, v0, v4

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xy.android.playpause"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    const-string v2, "85"

    aput-object v2, v0, v4

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xy.android.forceplay"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    const-string v2, "126"

    aput-object v2, v0, v4

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xy.android.forcepause"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "127"

    aput-object v2, v0, v4

    goto :goto_0
.end method
