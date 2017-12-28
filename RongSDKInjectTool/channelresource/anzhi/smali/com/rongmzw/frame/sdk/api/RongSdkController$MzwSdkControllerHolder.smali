.class Lcom/rongmzw/frame/sdk/api/RongSdkController$MzwSdkControllerHolder;
.super Ljava/lang/Object;
.source "RongSdkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MzwSdkControllerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/rongmzw/frame/sdk/api/RongSdkController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V

    sput-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    return-object v0
.end method
