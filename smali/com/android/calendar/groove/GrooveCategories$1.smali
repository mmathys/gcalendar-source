.class final Lcom/android/calendar/groove/GrooveCategories$1;
.super Landroid/util/SparseIntArray;
.source "GrooveCategories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveCategories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 32
    const/16 v0, 0x100

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_title:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 33
    const/16 v0, 0x102

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_run:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 34
    const/16 v0, 0x103

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_walk:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 35
    const/16 v0, 0x101

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_work_out:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 36
    const/16 v0, 0x104

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_yoga:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 37
    const/16 v0, 0x105

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_hike:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 38
    const/16 v0, 0x106

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_bike:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 39
    const/16 v0, 0x107

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_swim:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 40
    const/16 v0, 0x108

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_rock_climb:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 41
    const/16 v0, 0x109

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_play_tennis:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 42
    const/16 v0, 0x10a

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_play_badminton:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 44
    const/16 v0, 0x10b

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_play_baseball:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 46
    const/16 v0, 0x10c

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_play_basketball:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 48
    const/16 v0, 0x10d

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_play_soccer:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 49
    const/16 v0, 0x10e

    sget v1, Lcom/android/calendar/R$string;->groove_category_exercise_wiggle_ears:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 51
    const/16 v0, 0x200

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_title:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 52
    const/16 v0, 0x201

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_practice_language:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 54
    const/16 v0, 0x203

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_learn_instrument:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 56
    const/16 v0, 0x202

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_learn_to_code:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 58
    const/16 v0, 0x204

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_make_art:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 60
    const/16 v0, 0x205

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_practice_photography:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 62
    const/16 v0, 0x206

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_hone_carpentry_skills:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 64
    const/16 v0, 0x207

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_sing:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 65
    const/16 v0, 0x208

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_learn_a_knot:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 67
    const/16 v0, 0x209

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_learn_new_software:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 69
    const/16 v0, 0x20a

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_cook_something_new:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 71
    const/16 v0, 0x20b

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_learn_to_drive:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 73
    const/16 v0, 0x20c

    sget v1, Lcom/android/calendar/R$string;->groove_category_build_skill_learn_to_fly:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 76
    const/16 v0, 0x300

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_title:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 78
    const/16 v0, 0x301

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_reach_out:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 80
    const/16 v0, 0x302

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_meal_with_family:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 82
    const/16 v0, 0x303

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_call_mom:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 84
    const/16 v0, 0x304

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_call_dad:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 86
    const/16 v0, 0x305

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_plan_a_date:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 88
    const/16 v0, 0x306

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_dinner_with_friends:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 90
    const/16 v0, 0x307

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_visit_family:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 92
    const/16 v0, 0x308

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_bbq:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 94
    const/16 v0, 0x309

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_play_board_game:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 96
    const/16 v0, 0x30a

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_plan_a_reunion:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 98
    const/16 v0, 0x30b

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_plan_family_vacation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 100
    const/16 v0, 0x30c

    sget v1, Lcom/android/calendar/R$string;->groove_category_friends_and_family_walk_the_dog:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 103
    const/16 v0, 0x400

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_title:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 104
    const/16 v0, 0x401

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_read:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 105
    const/16 v0, 0x402

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_meditate:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 106
    const/16 v0, 0x403

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_hobby:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 107
    const/16 v0, 0x404

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_cook:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 108
    const/16 v0, 0x405

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_journal:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 109
    const/16 v0, 0x406

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_pray:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 110
    const/16 v0, 0x407

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_watch_movie:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 111
    const/16 v0, 0x408

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_take_a_nap:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 112
    const/16 v0, 0x409

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_get_a_massage:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 113
    const/16 v0, 0x40a

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_sit_in_the_grass:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 115
    const/16 v0, 0x40b

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_take_the_boat_out:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 117
    const/16 v0, 0x40c

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_lie_in_a_hammock:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 119
    const/16 v0, 0x40d

    sget v1, Lcom/android/calendar/R$string;->groove_category_me_time_take_a_selfie:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 121
    const/16 v0, 0x500

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_life_title:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 122
    const/16 v0, 0x501

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_life_plan_my_day:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 124
    const/16 v0, 0x502

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_life_clean:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 125
    const/16 v0, 0x503

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_life_chores:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 127
    const/16 v0, 0x504

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_make_a_todo_list:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 129
    const/16 v0, 0x505

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_buy_groceries:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 131
    const/16 v0, 0x506

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_study:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 132
    const/16 v0, 0x507

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_do_laundry:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 134
    const/16 v0, 0x508

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_do_finances:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 136
    const/16 v0, 0x509

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_plan_the_week:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 138
    const/16 v0, 0x50b

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_clear_email_inbox:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 140
    const/16 v0, 0x50c

    sget v1, Lcom/android/calendar/R$string;->groove_category_organize_clean_the_house:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategories$1;->append(II)V

    .line 142
    return-void
.end method
