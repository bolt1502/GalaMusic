.class public Lcom/acloud/DataRunnable;
.super Ljava/lang/Object;
.source "DataRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/DataRunnable$DataRunnableCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/acloud/DataRunnable$DataRunnableCallback;

.field private mObject:Ljava/lang/Object;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/acloud/DataRunnable$DataRunnableCallback;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/acloud/DataRunnable$DataRunnableCallback;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/acloud/DataRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 19
    iput-object v0, p0, Lcom/acloud/DataRunnable;->mObject:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/acloud/DataRunnable;->mCallback:Lcom/acloud/DataRunnable$DataRunnableCallback;

    .line 27
    iput-object p1, p0, Lcom/acloud/DataRunnable;->mObject:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/acloud/DataRunnable;->mCallback:Lcom/acloud/DataRunnable$DataRunnableCallback;

    .line 30
    new-instance v0, Lcom/acloud/DataRunnable$1;

    invoke-direct {v0, p0}, Lcom/acloud/DataRunnable$1;-><init>(Lcom/acloud/DataRunnable;)V

    iput-object v0, p0, Lcom/acloud/DataRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/DataRunnable;)Lcom/acloud/DataRunnable$DataRunnableCallback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/acloud/DataRunnable;->mCallback:Lcom/acloud/DataRunnable$DataRunnableCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/DataRunnable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/acloud/DataRunnable;->mObject:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/acloud/DataRunnable;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/acloud/DataRunnable;->mObject:Ljava/lang/Object;

    .line 47
    return-void
.end method
