.class Lcom/android/calendar/groove/GrooveContractEditSegment$FrequencyAdapter;
.super Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;
.source "GrooveContractEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveContractEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/groove/GrooveContractEditSegment;Landroid/content/Context;Landroid/widget/Spinner;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$FrequencyAdapter;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    .line 270
    invoke-direct {p0, p2, p3, p4}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;[Ljava/lang/String;)V

    .line 271
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;

    .line 277
    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$FrequencyAdapter;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    # getter for: Lcom/android/calendar/groove/GrooveContractEditSegment;->mFrequencyDropDownStrings:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveContractEditSegment;->access$400(Lcom/android/calendar/groove/GrooveContractEditSegment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-object v1
.end method
