.class Lcom/iqiyigame/plugin/utils/PingBackController$1;
.super Landroid/os/AsyncTask;
.source "PingBackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/utils/PingBackController;->httpRequest(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/plugin/utils/PingBackController;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/iqiyigame/plugin/utils/PingBackController;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/plugin/utils/PingBackController;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/iqiyigame/plugin/utils/PingBackController$1;->this$0:Lcom/iqiyigame/plugin/utils/PingBackController;

    iput-object p2, p0, Lcom/iqiyigame/plugin/utils/PingBackController$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iqiyigame/plugin/utils/PingBackController$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 109
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 110
    .local v0, "urlStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/iqiyigame/plugin/utils/PingBackController$1;->this$0:Lcom/iqiyigame/plugin/utils/PingBackController;

    # invokes: Lcom/iqiyigame/plugin/utils/PingBackController;->initGameConfig(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/iqiyigame/plugin/utils/PingBackController;->access$000(Lcom/iqiyigame/plugin/utils/PingBackController;Ljava/lang/String;)V

    .line 111
    const-string v2, "http://msg.71.am/v5/yx/yxfc"

    iget-object v3, p0, Lcom/iqiyigame/plugin/utils/PingBackController$1;->this$0:Lcom/iqiyigame/plugin/utils/PingBackController;

    iget-object v4, p0, Lcom/iqiyigame/plugin/utils/PingBackController$1;->val$params:Ljava/util/Map;

    # invokes: Lcom/iqiyigame/plugin/utils/PingBackController;->putGameInfoParams(Ljava/util/Map;)Ljava/util/Map;
    invoke-static {v3, v4}, Lcom/iqiyigame/plugin/utils/PingBackController;->access$100(Lcom/iqiyigame/plugin/utils/PingBackController;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getUrlWithParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "urlString":Ljava/lang/String;
    iget-object v2, p0, Lcom/iqiyigame/plugin/utils/PingBackController$1;->this$0:Lcom/iqiyigame/plugin/utils/PingBackController;

    # invokes: Lcom/iqiyigame/plugin/utils/PingBackController;->urlConnection(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/iqiyigame/plugin/utils/PingBackController;->access$200(Lcom/iqiyigame/plugin/utils/PingBackController;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iqiyigame/plugin/utils/PingBackController$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 119
    return-void
.end method
