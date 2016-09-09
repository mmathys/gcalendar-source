.class Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipConfigLineHeightSpan;
.super Ljava/lang/Object;
.source "SuggestionEditText.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;
.implements Landroid/text/style/UpdateLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/SuggestionEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChipConfigLineHeightSpan"
.end annotation


# instance fields
.field private final mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/segment/ChipConfig;)V
    .locals 1

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/ChipConfig;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipConfigLineHeightSpan;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    .line 696
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipConfigLineHeightSpan;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, p6}, Lcom/android/calendar/event/edit/segment/ChipConfig;->updateFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 702
    return-void
.end method
