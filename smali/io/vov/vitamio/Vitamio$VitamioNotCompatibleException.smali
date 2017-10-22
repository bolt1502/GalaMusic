.class public Lio/vov/vitamio/Vitamio$VitamioNotCompatibleException;
.super Landroid/util/AndroidException;
.source "Vitamio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/Vitamio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VitamioNotCompatibleException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1cc27e38bc711102L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 242
    return-void
.end method
