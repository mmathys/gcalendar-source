.class public Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;
.super Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;
.source "FrequencyChoiceCreator.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->mResources:Landroid/content/res/Resources;

    .line 29
    return-void
.end method

.method private getValues()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    const/4 v0, 0x1

    :goto_0
    if-gt v0, v3, :cond_0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object v1
.end method


# virtual methods
.method public createDisplayString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->every_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$plurals;->groove_n_times_a_week:I

    invoke-static {v0, v1, p1}, Lcom/android/calendar/Utils;->createPluralString(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected createLabel(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->every_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$plurals;->groove_n_times:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->createPluralString(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic createLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->createLabel(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createList(I)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->getValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;->createList(Ljava/util/ArrayList;Ljava/lang/Object;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    return-object v0
.end method
