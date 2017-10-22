.class public abstract Lcom/acloud/stub/service/aidl/IPlayService$Stub;
.super Landroid/os/Binder;
.source "IPlayService.java"

# interfaces
.implements Lcom/acloud/stub/service/aidl/IPlayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/service/aidl/IPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/service/aidl/IPlayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.acloud.stub.service.aidl.IPlayService"

.field static final TRANSACTION_getDuration:I = 0x7

.field static final TRANSACTION_getPosition:I = 0x8

.field static final TRANSACTION_getState:I = 0x9

.field static final TRANSACTION_getWidgetMsg:I = 0xe

.field static final TRANSACTION_init:I = 0x2

.field static final TRANSACTION_nativeToWidget:I = 0xd

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x4

.field static final TRANSACTION_release:I = 0xc

.field static final TRANSACTION_seekTo:I = 0xa

.field static final TRANSACTION_setAction:I = 0x3

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_start:I = 0x5

.field static final TRANSACTION_stop:I = 0xb

.field static final TRANSACTION_unRegiestMediaButton:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p0, p0, v0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/acloud/stub/service/aidl/IPlayService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.acloud.stub.service.aidl.IPlayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/acloud/stub/service/aidl/IPlayService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/acloud/stub/service/aidl/IPlayService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/acloud/stub/service/aidl/IPlayService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    invoke-virtual {p0, v0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->setCallback(Lcom/acloud/stub/service/aidl/IPlayServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    :sswitch_2
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->init()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->setAction(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->play(Ljava/lang/String;II)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_5
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->start()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    :sswitch_6
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->pause()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    :sswitch_7
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->getDuration()I

    move-result v3

    .line 101
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 107
    .end local v3    # "_result":I
    :sswitch_8
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->getPosition()I

    move-result v3

    .line 109
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v3    # "_result":I
    :sswitch_9
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->getState()I

    move-result v3

    .line 117
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v3    # "_result":I
    :sswitch_a
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->seekTo(I)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->stop()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    :sswitch_c
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->release()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    :sswitch_d
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->nativeToWidget(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->getWidgetMsg()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.acloud.stub.service.aidl.IPlayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/acloud/stub/service/aidl/IPlayService$Stub;->unRegiestMediaButton()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
