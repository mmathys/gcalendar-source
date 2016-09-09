.class public Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;
.super Ljava/lang/Object;
.source "ChoiceCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/common/ChoiceCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoiceList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TValueT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<TValueT;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mLabels:Ljava/util/ArrayList;

    .line 119
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mValues:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;Landroid/support/v4/util/Pair;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->addHeaderIfApplicable(Landroid/support/v4/util/Pair;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;Landroid/support/v4/util/Pair;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->addFooterIfApplicable(Landroid/support/v4/util/Pair;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;I)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->setSelectedPosition(I)V

    return-void
.end method

.method private addFooterIfApplicable(Landroid/support/v4/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "TValueT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mLabels:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mValues:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void
.end method

.method private addHeaderIfApplicable(Landroid/support/v4/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "TValueT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mLabels:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mValues:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 139
    :cond_0
    return-void
.end method

.method private setSelectedPosition(I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mSelectedPosition:I

    .line 150
    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mSelectedPosition:I

    return v0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TValueT;>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method
