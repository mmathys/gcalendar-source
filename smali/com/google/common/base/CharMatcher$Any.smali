.class final Lcom/google/common/base/CharMatcher$Any;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Any"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1120
    new-instance v0, Lcom/google/common/base/CharMatcher$Any;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Any;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$Any;->INSTANCE:Lcom/google/common/base/CharMatcher$Any;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1123
    const-string v0, "CharMatcher.any()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 1124
    return-void
.end method


# virtual methods
.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1139
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 1140
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x1

    return v0
.end method
