.class final Lcom/unionpay/mobile/android/utils/d;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "com.unionpay.uppay"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.unionpay"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.unionpay.tsmservice"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
