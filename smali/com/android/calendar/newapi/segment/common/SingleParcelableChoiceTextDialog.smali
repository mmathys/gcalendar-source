.class public Lcom/android/calendar/newapi/segment/common/SingleParcelableChoiceTextDialog;
.super Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;
.source "SingleParcelableChoiceTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParcelableT::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog",
        "<TParcelableT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected restoreValuesFromInstanceState(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<TParcelableT;>;"
        }
    .end annotation

    .prologue
    .line 18
    const-string v0, "single_choice_text_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected saveValuesToInstanceState(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<TParcelableT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    const-string v0, "single_choice_text_values"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 14
    return-void
.end method
