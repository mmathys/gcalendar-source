.class public Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;
.super Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;
.source "DurationChoiceCreator.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;->mResources:Landroid/content/res/Resources;

    .line 28
    return-void
.end method

.method private getDefaultDurations()Ljava/util/ArrayList;
    .locals 5
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
    .line 39
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$array;->duration_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v1, v0

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected createFooter()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Landroid/support/v4/util/Pair;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$string;->custom_groove_button_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createLabel(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/event/ReminderUtils;->constructTimeIntervalString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;->createLabel(Ljava/lang/Integer;)Ljava/lang/String;

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
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;->getDefaultDurations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;->createList(Ljava/util/ArrayList;Ljava/lang/Object;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    return-object v0
.end method
