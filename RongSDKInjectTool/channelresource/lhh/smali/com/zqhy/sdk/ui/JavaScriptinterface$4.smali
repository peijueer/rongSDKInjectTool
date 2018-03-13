.class Lcom/zqhy/sdk/ui/JavaScriptinterface$4;
.super Ljava/lang/Object;
.source "JavaScriptinterface.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/JavaScriptinterface;->showDownloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/zqhy/sdk/ui/JavaScriptinterface;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Lcom/zqhy/sdk/ui/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->e:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->a:Lcom/zqhy/sdk/ui/b;

    iput-object p3, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 765
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->a:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->dismiss()V

    .line 767
    const-string v0, "OPENAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->e:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return-void
.end method
