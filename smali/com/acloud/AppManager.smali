.class public Lcom/acloud/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/acloud/AppManager;


# instance fields
.field private mData:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/AppManager;->mData:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static getAppManager()Lcom/acloud/AppManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/acloud/AppManager;->instance:Lcom/acloud/AppManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/acloud/AppManager;

    invoke-direct {v0}, Lcom/acloud/AppManager;-><init>()V

    sput-object v0, Lcom/acloud/AppManager;->instance:Lcom/acloud/AppManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/acloud/AppManager;->instance:Lcom/acloud/AppManager;

    return-object v0
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/acloud/AppManager;->finishAllActivity()V

    .line 104
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 105
    .local v0, "activityMgr":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 108
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "activityMgr":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    sget-object v0, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    .line 41
    :cond_0
    sget-object v0, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 47
    sget-object v1, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 48
    .local v0, "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public finishActivity()V
    .locals 2

    .prologue
    .line 54
    sget-object v1, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 55
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/acloud/AppManager;->finishActivity(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    sget-object v0, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 64
    const/4 p1, 0x0

    .line 66
    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    return-void

    .line 79
    :cond_1
    const-string v1, "SSS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lcom/acloud/AppManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " finishActivity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v1, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 81
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {p0, v0}, Lcom/acloud/AppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public finishAllActivity()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 95
    sget-object v2, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 96
    return-void

    .line 91
    :cond_0
    sget-object v2, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    sget-object v2, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/acloud/AppManager;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public gotoHome(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    sget-object v0, Lcom/acloud/AppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 71
    const/4 p1, 0x0

    .line 73
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/acloud/AppManager;->mData:Ljava/lang/Object;

    .line 126
    return-void
.end method
