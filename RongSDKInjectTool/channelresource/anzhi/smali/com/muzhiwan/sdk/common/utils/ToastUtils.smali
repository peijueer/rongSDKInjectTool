.class public Lcom/muzhiwan/sdk/common/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showCustomToast(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceid"    # I

    .prologue
    .line 52
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "layout":Landroid/view/View;
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 55
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 56
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 57
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 58
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 32
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    .line 37
    :goto_1
    sget-object v0, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 35
    sget-object v0, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1
.end method
