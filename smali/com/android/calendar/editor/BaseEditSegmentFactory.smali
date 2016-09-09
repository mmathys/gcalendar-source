.class public abstract Lcom/android/calendar/editor/BaseEditSegmentFactory;
.super Ljava/lang/Object;
.source "BaseEditSegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;,
        Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;,
        Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFactoryMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/calendar/editor/BaseEditSegmentFactory;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/editor/BaseEditSegmentFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory;->mFactoryMethods:Ljava/util/Map;

    .line 49
    return-void
.end method

.method protected static varargs unmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static varargs unmodifiableSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSegmentToContainer(Landroid/view/ViewGroup;ILjava/lang/String;Lcom/android/calendar/editor/EditSegment;IIZ)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    if-ne p6, p5, :cond_5

    move v2, v0

    .line 122
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p7, :cond_0

    .line 123
    invoke-virtual {p4}, Lcom/android/calendar/editor/EditSegment;->addExtraTopPadding()V

    .line 126
    :cond_0
    add-int/lit8 v2, p2, -0x1

    if-eq p5, v2, :cond_6

    .line 127
    invoke-virtual {p0, p4, p3}, Lcom/android/calendar/editor/BaseEditSegmentFactory;->segmentNeedsDivider(Lcom/android/calendar/editor/EditSegment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    :goto_1
    if-eqz v0, :cond_3

    .line 129
    if-eqz p7, :cond_1

    .line 130
    invoke-virtual {p4}, Lcom/android/calendar/editor/EditSegment;->addExtraBottomPadding()V

    .line 133
    :cond_1
    invoke-virtual {p4}, Lcom/android/calendar/editor/EditSegment;->getDivider()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 134
    new-instance v1, Lcom/android/calendar/event/edit/segment/EditSegmentDivider;

    invoke-virtual {p4}, Lcom/android/calendar/editor/EditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/event/edit/segment/EditSegmentDivider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v1}, Lcom/android/calendar/editor/EditSegment;->setDivider(Landroid/view/View;)V

    .line 136
    :cond_2
    invoke-virtual {p4}, Lcom/android/calendar/editor/EditSegment;->getDivider()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 p6, p5, 0x1

    :cond_4
    return p6

    :cond_5
    move v2, v1

    .line 121
    goto :goto_0

    :cond_6
    move v0, v1

    .line 127
    goto :goto_1
.end method

.method public createAndAddEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/editor/EditSegmentController;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 88
    if-eqz p3, :cond_0

    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/calendar/editor/BaseEditSegmentFactory;->createEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v8

    .line 92
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v2

    .line 95
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v1

    move v5, v1

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/editor/EditSegment;

    move-object v0, p0

    move-object v1, p3

    move-object v3, p2

    .line 96
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/editor/BaseEditSegmentFactory;->addSegmentToContainer(Landroid/view/ViewGroup;ILjava/lang/String;Lcom/android/calendar/editor/EditSegment;IIZ)I

    move-result v6

    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    goto :goto_1

    :cond_0
    move v0, v1

    .line 88
    goto :goto_0

    .line 100
    :cond_1
    return-object v8
.end method

.method public createAndAddEditSegmentsMaybeInHeader(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/editor/EditSegmentController;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/calendar/editor/BaseEditSegmentFactory;->createAndAddEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public createEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/editor/EditSegmentController;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-virtual {p0, p2, p3}, Lcom/android/calendar/editor/BaseEditSegmentFactory;->getSegmentIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 60
    const-string v2, "Unknown editorTypeId: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory;->mFactoryMethods:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;

    .line 65
    if-nez v1, :cond_1

    .line 66
    sget-object v1, Lcom/android/calendar/editor/BaseEditSegmentFactory;->TAG:Ljava/lang/String;

    const-string v4, "No factory method for segment id [%s]"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {v1, v0}, Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;->createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    sget-object v1, Lcom/android/calendar/editor/BaseEditSegmentFactory;->TAG:Ljava/lang/String;

    const-string v4, "Failed to create segment for id [%s]"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v1, v0, p1}, Lcom/android/calendar/editor/EditSegment;->initSegment(Ljava/lang/String;Lcom/android/calendar/editor/EditSegmentController;)V

    .line 76
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_3
    return-object v2
.end method

.method protected abstract getSegmentIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory;->mFactoryMethods:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method protected segmentNeedsDivider(Lcom/android/calendar/editor/EditSegment;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method
