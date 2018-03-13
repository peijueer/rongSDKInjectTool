.class public Lcom/zqhy/sdk/a/a;
.super Landroid/widget/BaseAdapter;
.source "RowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5982\u4f55\u8054\u7cfb\u5ba2\u670d\u59b9\u7eb8\uff1f"

    aput-object v1, v0, v2

    const-string v1, "\u5fd8\u8bb0\u8d26\u53f7\u600e\u4e48\u529e\uff1f"

    aput-object v1, v0, v3

    const-string v1, "\u5fd8\u8bb0\u5bc6\u7801\u600e\u4e48\u529e\uff1f"

    aput-object v1, v0, v4

    const-string v1, "\u4ec0\u4e48\u662f\u8d26\u53f7\u767b\u5f55\u4fdd\u62a4\uff1f"

    aput-object v1, v0, v5

    const-string v1, "\u7f51\u7edc\u52a0\u8f7d\u5f02\u5e38\uff0c\u53ef\u80fd\u51fa\u73b0\u7684\u539f\u56e0\uff1f"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/zqhy/sdk/a/a;->b:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5ba2\u670d-\u840c\u840c\uff1a3168440383\n\u5b98\u65b9\u73a9\u5bb6\u7fa4\uff1a468203165\n\u5ba2\u670d\u7535\u8bdd\uff1a027-88108611"

    aput-object v1, v0, v2

    const-string v1, "\u3010\u5145\u503c\u8fc7\u3011\u63d0\u4f9b\u4efb\u610f\u4e00\u7b14\u5145\u503c\u8ba2\u5355\u53f7\u7ed9\u5ba2\u670d\u4e3a\u60a8\u67e5\u8be2\uff0c\u5feb\u901f\u67e5\u627e\u5230\n\u3010\u672a\u5145\u503c\u8fc7\u3011\u63d0\u4f9b\uff5b\u6e38\u620f\u3001\u533a\u670d\u3001\u5e10\u53f7\u3001\u89d2\u8272\u540d\uff5d\u4fe1\u606f\u5230\u5ba2\u670d\u67e5\u8be2\uff0c\u9700\u8981\u4e00\u5b9a\u65f6\u95f4"

    aput-object v1, v0, v3

    const-string v1, "\u3010\u7ed1\u5b9a\u624b\u673a\u3011\u901a\u8fc7\u9a8c\u8bc1\u7ed1\u5b9a\u624b\u673a\u53f7\u4fee\u6539\u627e\u56de\n\u3010\u672a\u7ed1\u624b\u673a\u3011\u8054\u7cfb\u5ba2\u670d\u7533\u8bc9\u627e\u56de"

    aput-object v1, v0, v4

    const-string v1, "\u957f\u65f6\u95f4\u672a\u6709\u767b\u5f55\u64cd\u4f5c\u7684\u5e10\u53f7\uff0c\u5c06\u8fdb\u5165\u5e10\u53f7\u4fdd\u62a4\u671f\uff0c\u6b64\u671f\u95f4\u65e0\u6cd5\u767b\u5f55\uff0c\u8054\u7cfb\u5ba2\u670d\u89e3\u9664\u4fdd\u62a4\u5373\u53ef"

    aput-object v1, v0, v5

    const-string v1, "(1)\u7f51\u7edc\u4fe1\u53f7\u6ce2\u52a8\u5bfc\u81f4\u52a0\u8f7d\u5f02\u5e38\uff0c\u53ef\u70b9\u51fb\u52a0\u8f7d\u56fe\u7247\u91cd\u65b0\u52a0\u8f7d\n(2)\u7f51\u7edc\u8054\u673a\u5f02\u5e38\uff0c\u8bf7\u65ad\u5f00\u7f51\u7edc\u91cd\u65b0\u8fde\u63a5/\u5207\u63624g\u6216wifi\u7f51\u7edc\u540e\u518d\u767b\u5f55\u6e38\u620f\n(3)\u91cd\u542f\u624b\u673a/\u91cd\u542f\u8def\u7531/\u91cd\u542f\u732b\uff0c\u518d\u91cd\u65b0\u767b\u5f55\u6e38\u620f\u8fdb\u884c\u52a0\u8f7d\n(4)\u4ee5\u4e0a\u5c1d\u8bd5\u8fd8\u4e0d\u884c\uff1f\u8054\u7cfb\u5ba2\u670d\u4e3a\u60a8\u5904\u7406"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/zqhy/sdk/a/a;->c:[Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/zqhy/sdk/a/a;->d:Z

    .line 45
    iput-object p1, p0, Lcom/zqhy/sdk/a/a;->a:Landroid/content/Context;

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/zqhy/sdk/a/a;->c:[Ljava/lang/String;

    aput-object p2, v0, v2

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zqhy/sdk/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zqhy/sdk/a/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/a/a;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 74
    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v1, Lcom/zqhy/sdk/a/a$a;

    invoke-direct {v1}, Lcom/zqhy/sdk/a/a$a;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/zqhy/sdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/zqhy/sdk/a/a;->a:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "zq_sdk_item_message_row"

    invoke-static {v2, v3, v4}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    iget-object v0, p0, Lcom/zqhy/sdk/a/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "tv_title"

    invoke-static {v0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zqhy/sdk/a/a$a;->a:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/zqhy/sdk/a/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "tv_content"

    invoke-static {v0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zqhy/sdk/a/a$a;->b:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/zqhy/sdk/a/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "iv_arrow"

    invoke-static {v0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zqhy/sdk/a/a$a;->c:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/zqhy/sdk/a/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "row"

    invoke-static {v0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    iput-object v0, v1, Lcom/zqhy/sdk/a/a$a;->d:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 88
    :goto_0
    iget-object v1, v0, Lcom/zqhy/sdk/a/a$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zqhy/sdk/a/a;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, v0, Lcom/zqhy/sdk/a/a$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zqhy/sdk/a/a;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, v0, Lcom/zqhy/sdk/a/a$a;->d:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    new-instance v2, Lcom/zqhy/sdk/a/a$1;

    invoke-direct {v2, p0, v0}, Lcom/zqhy/sdk/a/a$1;-><init>(Lcom/zqhy/sdk/a/a;Lcom/zqhy/sdk/a/a$a;)V

    invoke-virtual {v1, v2}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->setOnExpandListener(Lcom/zqhy/sdk/ui/expand/a;)V

    .line 102
    return-object p2

    .line 85
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/a/a$a;

    goto :goto_0
.end method
