.class public Lcom/android/calendar/ContactNameResolver;
.super Ljava/lang/Object;
.source "ContactNameResolver.java"


# direct methods
.method private static buildContactSearchFilters(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {}, Lcom/android/calendar/timely/ContactInfo;->newBuilder()Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v3

    .line 36
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 37
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->build()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 40
    :cond_0
    return-object v2
.end method

.method private static buildDisplayNames(Ljava/util/List;Landroid/support/v4/util/SimpleArrayMap;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-virtual {p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    return-object v1
.end method

.method private static buildEmailToDisplayNameMap(Ljava/util/List;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;)",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ContactInfo;

    .line 47
    iget-object v3, v0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/calendar/timely/ContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method

.method private static loadContactInfos(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/android/calendar/timely/ContactInfoLoader;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/ContactInfoLoader;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/ContactInfoLoader;->loadFully(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static loadDisplayNames(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/android/calendar/ContactNameResolver;->buildContactSearchFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 22
    invoke-static {p0, v1}, Lcom/android/calendar/ContactNameResolver;->loadContactInfos(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/ContactNameResolver;->buildEmailToDisplayNameMap(Ljava/util/List;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 24
    invoke-static {p1, v0}, Lcom/android/calendar/ContactNameResolver;->buildDisplayNames(Ljava/util/List;Landroid/support/v4/util/SimpleArrayMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
