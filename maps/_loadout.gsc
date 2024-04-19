// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

init_loadout()
{
    give_loadout();
    maps\_loadout_code::loadout_complete();
}

give_loadout()
{
    if ( isdefined( level.dodgeloadout ) )
        return;

    if ( !isdefined( level.campaign ) )
        level.campaign = "american";

    var_0 = maps\_loadout_code::get_loadout();
    level.player maps\_loadout_code::setdefaultactionslot();
    level.has_loadout = 0;
    maps\_loadout_code::persist( "af_chase", "af_caves" );
    maps\_loadout_code::persist( "dc_whitehouse", "dcemp" );
    maps\_loadout_code::persist( "ending", "af_chase" );
    
    maps\_loadout_code::loadout( "trainer", "m4_grunt_SSDD", "deserteagle", "fraggrenade", undefined, "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "roadkill", "ak47_digital_grenadier", "glock", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "cliffhanger", undefined, undefined, undefined, undefined, "spetsnaz_arctic_vh", "british" );

    maps\_loadout_code::loadout( "airport", "colt45", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "favela", "ump45_digital_acog", "m1014", "fraggrenade", "flash_grenade", "spetsnaz_vh", "taskforce" );

    maps\_loadout_code::loadout( "invasion", "rpd_acog", "striker_reflex", "fraggrenade", "smoke_grenade_american", "spetsnaz_vh", "american" );
    //maps\_loadout_code::loadout( "invasion", "scar_h_reflex_shotgun", "striker_reflex", "fraggrenade", "smoke_grenade_american", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "favela_escape", "p90_eotech", "glock", "fraggrenade", "flash_grenade", "spetsnaz_vh", "taskforce" );

    maps\_loadout_code::loadout( "arcadia", "fal_shotgun", "dragunov", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "oilrig", "kriss_acog_silencer", "scar_h_thermal_silencer", "fraggrenade", "flash_grenade", "spetsnaz_vh", "seal" );

    maps\_loadout_code::loadout( "gulag", "m14_scoped_arctic", undefined, "fraggrenade", "flash_grenade", "spetsnaz_arctic_vh", "seal" );

    maps\_loadout_code::loadout( "dcburning", "m4m203_eotech", "beretta", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "contingency", "dragunov_arctic", "kriss_acog_silencer", "fraggrenade", "flash_grenade", "spetsnaz_arctic_vh", "american" );

    maps\_loadout_code::loadout( "dcemp", "masada_digital_acog", "beretta", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "dc_whitehouse", "m4m203_eotech", "beretta", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "estate", "masada_digital_grenadier_eotech", "cheytac_silencer_desert", "fraggrenade", "flash_grenade", "viewhands_shadow_co", "british" );

    maps\_loadout_code::loadout( "boneyard", "m14_scoped_silencer", "rpd_digital_reflex", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "af_caves", "cheytac_silencer_desert", "kriss_acog_silencer", "fraggrenade", "flash_grenade", "sc_viewhands", "american" );

    maps\_loadout_code::loadout( "af_chase", "uzi", "rpd", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadout( "ending", "uzi", "rpd", "fraggrenade", "flash_grenade", "spetsnaz_vh", "american" );

    maps\_loadout_code::loadoutequipment( "oilrig", undefined, "claymore" );
    maps\_loadout_code::loadoutequipment( "dcburning", undefined, "claymore" );
    maps\_loadout_code::loadoutequipment( "estate", undefined, "claymore" );
    maps\_loadout_code::default_loadout_if_notset();

    precachemodel("body_airborne_assault_a");
    precachemodel("body_airborne_assault_a_noik");
    precachemodel("body_airborne_assault_b");
    precachemodel("body_airborne_assault_b_noik");
    precachemodel("body_airborne_assault_c");
    precachemodel("body_airborne_assault_c_noik");
    PrecacheModel("body_opforce_arctic_assault_a");
    PrecacheModel("body_opforce_arctic_assault_a_l1");
    PrecacheModel("body_opforce_arctic_assault_b");
    PrecacheModel("body_opforce_arctic_assault_b_l1");
    PrecacheModel("body_opforce_arctic_assault_c");
    PrecacheModel("body_opforce_arctic_assault_c_l1");

    PrecacheModel("body_opforce_arctic_sitter");

    precachemodel("body_airborne_lmg");
    precachemodel("body_airborne_lmg_b");
    precachemodel("body_airborne_lmg_c");
    precachemodel("body_opforce_arctic_lmg");
    precachemodel("body_opforce_arctic_lmg_b");
    precachemodel("body_opforce_arctic_lmg_c");

    precachemodel("body_airborne_shotgun");
    precachemodel("body_airborne_shotgun_b");
    precachemodel("body_airborne_shotgun_c");
    PrecacheModel("body_opforce_arctic_shotgun");
    PrecacheModel("body_opforce_arctic_shotgun_b");
    PrecacheModel("body_opforce_arctic_shotgun_b_l1");
    PrecacheModel("body_opforce_arctic_shotgun_c");
    PrecacheModel("body_opforce_arctic_shotgun_c_l1");
    PrecacheModel("body_opforce_arctic_shotgun_l1");

    precachemodel("body_airborne_smg");
    precachemodel("body_airborne_smg_b");
    precachemodel("body_airborne_smg_c");
    PrecacheModel("body_opforce_arctic_smg");
    PrecacheModel("body_opforce_arctic_smg_b");
    PrecacheModel("body_opforce_arctic_smg_b_l1");
    PrecacheModel("body_opforce_arctic_smg_c");
    PrecacheModel("body_opforce_arctic_smg_c_l1");
    PrecacheModel("body_opforce_arctic_smg_l1");

    precachemodel("head_airborne_a");
    precachemodel("head_airborne_b");
    precachemodel("head_airborne_c");
    precachemodel("head_airborne_d");
    precachemodel("head_airborne_e");
    PrecacheModel("head_opforce_arctic_a");
    PrecacheModel("head_opforce_arctic_a_l1");
    PrecacheModel("head_opforce_arctic_b");
    PrecacheModel("head_opforce_arctic_b_l1");
    PrecacheModel("head_opforce_arctic_c");
    PrecacheModel("head_opforce_arctic_c_l1");
    PrecacheModel("head_opforce_arctic_d");
    PrecacheModel("head_opforce_arctic_d_l1");

    precachemodel("body_op_airborne_sniper");
    precachemodel("head_op_airborne_sniper");

    precachemodel("body_op_arctic_sniper");
    precachemodel("head_op_arctic_sniper");

    precachemodel("body_arctic_tf141_ghost");
    precachemodel("body_tf141_assault_a");
    precachemodel("body_tf141_assault_b");
    precachemodel("body_tf141_lmg");
    precachemodel("body_tf141_shotgun");
    precachemodel("head_tf141_arctic_a");
    precachemodel("head_tf141_arctic_b");
    precachemodel("head_tf141_arctic_c");
    precachemodel("head_tf141_arctic_d");

    precachemodel("spetsnaz_vh");
    precachemodel("spetsnaz_player_vh");

    precachemodel("spetsnaz_arctic_vh");
    precachemodel("tf141_arctic_player_vh"); //here working
    precachemodel("viewhands_shadow_co");
    
    //precachemodel("vehicle_m1a1_abrams");

    precachemodel("viewbody_tf141_arctic");
    precachemodel("vb_us_army");

    precacheitem("ak47_arctic");
    precacheitem("ak47_arctic_acog");
    precacheitem("ak47_arctic_grenadier");
    precacheitem("ak47_arctic_reflex");
    precacheitem("gl_ak47_arctic");

    precachemodel("body_opforce_arab_lmg_a");
    precachemodel("body_opforce_arab_smg_a");
    precachemodel("body_opforce_arab_assault_a");
    precachemodel("body_opforce_arab_unarmed_a_shadow");
    precachemodel("head_opforce_arab_d_hat");
    precachemodel("head_opforce_arab_e");
    precachemodel("head_opforce_arab_c");
    precachemodel("head_opforce_arab_b");
    precachemodel("head_opforce_arab_a");
    precachemodel("hat_opforce_arab_d");
    precachemodel("body_opforce_arab_smg_a_hamed");
    precachemodel("body_ally_arab_trn_assault_a");
    precachemodel("body_ally_arab_trn_smg_a");
    precachemodel("head_trn_arab_g");
    precachemodel("head_trn_arab_f");
    precachemodel("head_trn_arab_e");
    precachemodel("head_trn_arab_d");
    precachemodel("head_trn_arab_b");
    precachemodel("head_trn_arab_c");
    precachemodel("head_trn_arab_a");
    precachemodel("body_force_c_woodland");
    precachemodel("body_force_b_woodland");
    precachemodel("body_force_assault_woodland");
    precachemodel("head_force_c");
    precachemodel("head_force_chad");
    precachemodel("head_force_assault");

    precacheitem("aug_reflex_arctic");
    precacheitem("aug_scope_arctic");

    precacheitem("dragunov_arctic");

    precacheitem("famas_arctic");
    precacheitem("famas_arctic_reflex");

    precacheitem("m21_soap");
    precacheitem("masada_silencer_mt_camo_on_h2");
    precacheitem("masada_silencer_mt_dust_off");
    precacheitem("masada_silencer_mt_dust_on");

    precacheitem("p90_arctic");

    precacheitem("spas12");
    precacheitem("spas12_arctic");

    precacheitem("ump45_arctic");
    precacheitem("glock");

    Precacheitem("ak47");
    Precacheitem("ak47_digital_acog");
    Precacheitem("ak47_digital_eotech");
    Precacheitem("ak47_digital_grenadier");
    Precacheitem("ak47_digital_reflex");
    Precacheitem("ak47_reflex");
    Precacheitem("ak47_shotgun");
    Precacheitem("ak47_shotgun_attach");
    Precacheitem("gl_ak47_digital");

    Precacheitem("fal_acog");
    Precacheitem("fal_shotgun");
    Precacheitem("fal_shotgun_attach");

    Precacheitem("kriss");
    Precacheitem("kriss_reflex");
    Precacheitem("kriss_acog_silencer");

    Precacheitem("m16_acog");
    Precacheitem("m16_basic");
    Precacheitem("m16_grenadier");
    Precacheitem("m203_m16");

    Precacheitem("p90");
    Precacheitem("p90_acog");
    Precacheitem("p90_eotech");
    Precacheitem("p90_reflex");

    Precacheitem("pp2000");

    Precacheitem("rpd");
    Precacheitem("rpd_acog");
    Precacheitem("rpd_digital");
    Precacheitem("rpd_digital_acog");
    Precacheitem("rpd_digital_reflex");
    Precacheitem("rpd_reflex");

    Precacheitem("striker");
    Precacheitem("striker_reflex");

    Precacheitem("tavor_digital_acog");
    Precacheitem("tavor_digital_eotech");
    Precacheitem("tavor_mars");
    Precacheitem("tavor_reflex");

    Precacheitem("ump45_digital_acog");
    Precacheitem("ump45_digital_eotech");

    Precacheitem("aa12");
    Precacheitem("aa12_reflex");

    Precacheitem("cheytac_silencer");
    Precacheitem("cheytac_silencer_desert");
    Precacheitem("wa2000_thermal");
    Precacheitem("dragunov");

    Precacheitem("deserteagle");

    Precacheitem("mp5_reflex");
    Precacheitem("mp5_silencer_reflex");

    Precacheitem("scar_h_thermal");
    Precacheitem("scar_h_thermal_silencer");

    Precacheitem("tmp");
    Precacheitem("tmp_reflex");
}
