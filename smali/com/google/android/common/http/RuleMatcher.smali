.class Lcom/google/android/common/http/RuleMatcher;
.super Ljava/lang/Object;
.source "RuleMatcher.java"


# instance fields
.field private final allRulesMatcher:Ljava/util/regex/Matcher;

.field private final mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/http/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private final nonWordCharacterMatcher:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>([Lcom/google/android/common/http/Rule;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "\\W"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/http/RuleMatcher;->nonWordCharacterMatcher:Ljava/util/regex/Matcher;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/RuleMatcher;->mRules:Ljava/util/List;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 37
    iget-object v5, p0, Lcom/google/android/common/http/RuleMatcher;->mRules:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v5, p0, Lcom/google/android/common/http/RuleMatcher;->nonWordCharacterMatcher:Ljava/util/regex/Matcher;

    iget-object v6, v4, Lcom/google/android/common/http/Rule;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    iget-object v5, p0, Lcom/google/android/common/http/RuleMatcher;->nonWordCharacterMatcher:Ljava/util/regex/Matcher;

    const-string v6, "\\\\$0"

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v5, "RuleMatcher"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    const-string v5, "RuleMatcher"

    const-string v6, "Added %s rule for prefix %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/google/android/common/http/Rule;->type:Ljava/lang/String;

    aput-object v8, v7, v1

    iget-object v4, v4, Lcom/google/android/common/http/Rule;->prefix:Ljava/lang/String;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "(%s)"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, ")|("

    .line 52
    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/http/RuleMatcher;->allRulesMatcher:Ljava/util/regex/Matcher;

    .line 54
    iget-object v0, p0, Lcom/google/android/common/http/RuleMatcher;->allRulesMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/common/http/RuleMatcher;->mRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 55
    const-string v0, "RuleMatcher"

    const-string v1, "Capture group / rule count mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized match(Ljava/lang/String;)Lcom/google/android/common/http/Rule;
    .locals 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/common/http/RuleMatcher;->allRulesMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/common/http/RuleMatcher;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 68
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/common/http/RuleMatcher;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/http/Rule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_1
    monitor-exit p0

    return-object v0

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
