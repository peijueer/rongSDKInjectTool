.class public final Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public errorCode:Ljava/lang/String;

.field public respCode:Ljava/lang/String;

.field public respMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->errorCode:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    .line 3
    return-void
.end method
