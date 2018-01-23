.class public Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;
.super Ljava/lang/Object;
.source "ColorDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v4

    .line 19
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 20
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 22
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 24
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v2, 0x0

    .local v2, "g":I
    const/4 v1, 0x0

    .local v1, "b":I
    const/4 v0, 0x0

    .line 26
    .local v0, "alpha":I
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    .line 27
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 64
    new-instance v7, Ljava/awt/Color;

    invoke-direct {v7, v5, v2, v1, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v7

    .line 32
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 33
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 40
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 41
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v6

    .line 42
    .local v6, "val":I
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 47
    const-string v7, "r"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 48
    move v5, v6

    .line 59
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 60
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 36
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "val":I
    :cond_3
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 44
    .restart local v3    # "key":Ljava/lang/String;
    :cond_4
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 49
    .restart local v6    # "val":I
    :cond_5
    const-string v7, "g"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 50
    move v2, v6

    goto :goto_1

    .line 51
    :cond_6
    const-string v7, "b"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 52
    move v1, v6

    goto :goto_1

    .line 53
    :cond_7
    const-string v7, "alpha"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 54
    move v0, v6

    goto :goto_1

    .line 56
    :cond_8
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xc

    return v0
.end method
