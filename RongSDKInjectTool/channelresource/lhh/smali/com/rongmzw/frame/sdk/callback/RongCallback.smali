.class public interface abstract Lcom/rongmzw/frame/sdk/callback/RongCallback;
.super Ljava/lang/Object;
.source "RongCallback.java"


# static fields
.field public static final CODE_FAILED:I = 0x0

.field public static final CODE_LOGIN_CANCEL:I = 0x4

.field public static final CODE_LOGIN_LOGOUT:I = 0x6

.field public static final CODE_PAY_FINISHED:I = 0x5

.field public static final CODE_PAY_PREPARE:I = -0x1

.field public static final CODE_SUCCESS:I = 0x1

.field public static final TYPE_EXITGAME:I = 0x5

.field public static final TYPE_INIT:I = 0x1

.field public static final TYPE_LOGIN:I = 0x2

.field public static final TYPE_PAY:I = 0x3

.field public static final TYPE_STAPAY:I = 0x4


# virtual methods
.method public abstract onResult(IILjava/lang/String;)V
.end method
