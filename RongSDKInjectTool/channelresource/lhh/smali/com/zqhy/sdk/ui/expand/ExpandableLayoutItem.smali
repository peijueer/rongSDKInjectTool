.class public Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;
.super Landroid/widget/RelativeLayout;
.source "ExpandableLayoutItem.java"


# instance fields
.field private closeByUser:Ljava/lang/Boolean;

.field private contentLayout:Landroid/widget/FrameLayout;

.field private duration:Ljava/lang/Integer;

.field private headerLayout:Landroid/widget/FrameLayout;

.field private isAnimationRunning:Ljava/lang/Boolean;

.field private isOpened:Ljava/lang/Boolean;

.field private onExpandListener:Lcom/zqhy/sdk/ui/expand/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isAnimationRunning:Ljava/lang/Boolean;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->closeByUser:Ljava/lang/Boolean;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isAnimationRunning:Ljava/lang/Boolean;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->closeByUser:Ljava/lang/Boolean;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isAnimationRunning:Ljava/lang/Boolean;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->closeByUser:Ljava/lang/Boolean;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->closeByUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$202(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isAnimationRunning:Ljava/lang/Boolean;

    return-object p1
.end method

.method private collapse(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 133
    new-instance v1, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;-><init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Landroid/view/View;I)V

    .line 151
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->duration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 152
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    invoke-interface {v0, v4}, Lcom/zqhy/sdk/ui/expand/a;->a(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method private expand(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    .line 106
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    new-instance v1, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;-><init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Landroid/view/View;I)V

    .line 124
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->duration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    invoke-interface {v0, v4}, Lcom/zqhy/sdk/ui/expand/a;->a(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 64
    const-string v0, "layout"

    const-string v1, "zq_sdk_view_expandable"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 65
    const-string v0, "id"

    const-string v1, "view_expandable_headerlayout"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->headerLayout:Landroid/widget/FrameLayout;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "attr"

    const-string v4, "ExpandableLayout"

    invoke-static {p1, v2, v4}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 67
    const-string v0, "styleable"

    const-string v1, "ExpandableLayout_el_headerLayout"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 68
    const-string v0, "styleable"

    const-string v1, "ExpandableLayout_el_contentLayout"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 69
    const-string v0, "id"

    const-string v5, "view_expandable_contentLayout"

    invoke-static {p1, v0, v5}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    .line 71
    if-eq v2, v6, :cond_0

    if-ne v1, v6, :cond_2

    .line 72
    :cond_0
    const-string v0, "layout"

    const-string v1, "zq_sdk_layout_view_header"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 73
    const-string v0, "layout"

    const-string v2, "zq_sdk_layout_view_content"

    invoke-static {p1, v0, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :goto_1
    return-void

    .line 80
    :cond_1
    const-string v2, "styleable"

    const-string v3, "ExpandableLayout_el_duration"

    invoke-static {p1, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->duration:Ljava/lang/Integer;

    .line 81
    invoke-static {p1, v1, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->headerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 84
    const-class v1, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-static {p1, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->headerLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$1;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$1;-><init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getCloseByUser()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->closeByUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getContentLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getHeaderLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->headerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isAnimationRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->collapse(Landroid/view/View;)V

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isAnimationRunning:Ljava/lang/Boolean;

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$5;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$5;-><init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;)V

    iget-object v2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->duration:Ljava/lang/Integer;

    .line 212
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->closeByUser:Ljava/lang/Boolean;

    .line 215
    return-void
.end method

.method public hideNow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 161
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    .line 163
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    invoke-interface {v0, v2}, Lcom/zqhy/sdk/ui/expand/a;->a(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public isOpened()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setOnExpandListener(Lcom/zqhy/sdk/ui/expand/a;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    .line 223
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isAnimationRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->expand(Landroid/view/View;)V

    .line 185
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isAnimationRunning:Ljava/lang/Boolean;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$4;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$4;-><init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;)V

    iget-object v2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->duration:Ljava/lang/Integer;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_0
    return-void
.end method

.method public showNow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 170
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;

    .line 171
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 173
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->onExpandListener:Lcom/zqhy/sdk/ui/expand/a;

    invoke-interface {v0, v2}, Lcom/zqhy/sdk/ui/expand/a;->a(Z)V

    .line 176
    :cond_0
    return-void
.end method
