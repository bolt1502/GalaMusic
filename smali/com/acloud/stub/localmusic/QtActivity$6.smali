.class Lcom/acloud/stub/localmusic/QtActivity$6;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Lcom/acloud/AndroidTimer$TimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity;->initTimer()V
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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$6;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout()V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$6;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$6;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$28(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$6;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$29(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    return-void
.end method
