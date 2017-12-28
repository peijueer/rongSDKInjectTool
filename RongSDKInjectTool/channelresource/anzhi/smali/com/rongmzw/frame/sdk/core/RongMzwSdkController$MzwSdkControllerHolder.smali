.class Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$MzwSdkControllerHolder;
.super Ljava/lang/Object;
.source "RongMzwSdkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MzwSdkControllerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;-><init>(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;)V

    sput-object v0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    return-object v0
.end method
