.class public Lcom/acloud/ui/utils/ViewHelperFactory;
.super Ljava/lang/Object;
.source "ViewHelperFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;,
        Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelperDefault;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViewHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Landroid/view/View;)Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .local v0, "version":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v1, Lcom/acloud/ui/utils/v16/ViewHelper16;

    invoke-direct {v1, p0}, Lcom/acloud/ui/utils/v16/ViewHelper16;-><init>(Landroid/view/View;)V

    .line 61
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 58
    new-instance v1, Lcom/acloud/ui/utils/v14/ViewHelper14;

    invoke-direct {v1, p0}, Lcom/acloud/ui/utils/v14/ViewHelper14;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelperDefault;

    invoke-direct {v1, p0}, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelperDefault;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method
