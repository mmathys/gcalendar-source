.class public Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;
.super Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;
.source "EditSpinnerTextArrayAdapter.java"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Spinner;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 15
    iput-object p3, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;->mStrings:[Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;->mStrings:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getTextAtPosition(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
