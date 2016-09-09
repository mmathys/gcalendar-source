.class public Lcom/android/calendar/newapi/segment/common/SingleIntegerChoiceTextDialog;
.super Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;
.source "SingleIntegerChoiceTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
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
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const-string v0, "single_choice_text_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

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
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    const-string v0, "single_choice_text_values"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 12
    return-void
.end method
