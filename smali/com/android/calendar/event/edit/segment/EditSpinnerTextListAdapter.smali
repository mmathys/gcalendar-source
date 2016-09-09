.class public Lcom/android/calendar/event/edit/segment/EditSpinnerTextListAdapter;
.super Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;
.source "EditSpinnerTextListAdapter.java"


# instance fields
.field private mStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Spinner;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/Spinner;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 17
    iput-object p3, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextListAdapter;->mStrings:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextListAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTextAtPosition(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextListAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
