.class public Lio/vov/vitamio/VitamioLicense;
.super Ljava/lang/Object;
.source "VitamioLicense.java"


# static fields
.field public static final LICENSE:Ljava/lang/String; = "Copyright (c) VOV IO (http://vov.io).\nTHIS SOFTWARE (Vitamio) IS WORK OF VOV IO (http://vov.io)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkValid()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
