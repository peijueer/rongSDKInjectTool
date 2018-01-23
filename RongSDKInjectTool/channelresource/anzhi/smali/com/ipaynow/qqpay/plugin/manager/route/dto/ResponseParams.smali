.class public final Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;
.super Ljava/lang/Object;


# instance fields
.field public errorCode:Ljava/lang/String;

.field public respCode:Ljava/lang/String;

.field public respMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    return-void
.end method
