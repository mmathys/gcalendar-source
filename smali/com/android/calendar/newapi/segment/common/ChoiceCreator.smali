.class public abstract Lcom/android/calendar/newapi/segment/common/ChoiceCreator;
.super Ljava/lang/Object;
.source "ChoiceCreator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TValueT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInsertPosition(I)I
    .locals 1

    .prologue
    .line 95
    add-int/lit8 v0, p0, 0x1

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getLabels(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TValueT;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;->createLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v1
.end method

.method private getSelectedPosition(Ljava/util/ArrayList;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TValueT;>;TValueT;)I"
        }
    .end annotation

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    goto :goto_0
.end method

.method private insertValueIfNotPresent(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TValueT;>;TValueT;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 85
    if-gez v0, :cond_0

    .line 86
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;->getInsertPosition(I)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method protected createFooter()Landroid/support/v4/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "TValueT;>;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createHeader()Landroid/support/v4/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "TValueT;>;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract createLabel(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValueT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected createList(Ljava/util/ArrayList;Ljava/lang/Object;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TValueT;>;TValueT;)",
            "Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList",
            "<TValueT;>;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;->insertValueIfNotPresent(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 40
    :cond_0
    new-instance v0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;->getLabels(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;->createHeader()Landroid/support/v4/util/Pair;

    move-result-object v1

    # invokes: Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->addHeaderIfApplicable(Landroid/support/v4/util/Pair;)V
    invoke-static {v0, v1}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->access$000(Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;Landroid/support/v4/util/Pair;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;->createFooter()Landroid/support/v4/util/Pair;

    move-result-object v1

    # invokes: Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->addFooterIfApplicable(Landroid/support/v4/util/Pair;)V
    invoke-static {v0, v1}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->access$100(Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;Landroid/support/v4/util/Pair;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;->getSelectedPosition(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v1

    # invokes: Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->setSelectedPosition(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->access$200(Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;I)V

    .line 44
    return-object v0
.end method
