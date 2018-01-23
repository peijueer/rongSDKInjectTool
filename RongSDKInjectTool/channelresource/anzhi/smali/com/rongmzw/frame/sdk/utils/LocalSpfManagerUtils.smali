.class public Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;
.super Ljava/lang/Object;
.source "LocalSpfManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMzwId(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mzwid"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->getMzwIds(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "mzwIds":Ljava/lang/String;
    invoke-static {v0}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    :goto_0
    const-string v1, "mzw_spf"

    const-string v2, "mzwids"

    invoke-static {p0, v1, v2, v0}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 61
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getMzwIds(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    const-string v4, "mzw_spf"

    const-string v5, "mzwids"

    const-string v6, ""

    invoke-static {p0, v4, v5, v6}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "mzwIds":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "mzwIdArray":[Ljava/lang/String;
    const-string v3, ""

    .line 48
    .local v3, "resultIds":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 52
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 54
    :cond_1
    return-object v3
.end method

.method public static getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 22
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static putBooleanShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 38
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public static putIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 26
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 27
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public static putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 15
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 18
    return-void
.end method
