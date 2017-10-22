.class Lcom/acloud/stub/localmusic/QtActivity$12;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity;->disposeExternal([Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$12;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 1957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$12;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v1, 0x0

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->setCurectPlayListSelection(I)V
    invoke-static {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$48(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 1962
    return-void
.end method
